import { register } from 'register-service-worker';

// The ready(), registered(), cached(), updatefound() and updated()
// events passes a ServiceWorkerRegistration instance in their arguments.
// ServiceWorkerRegistration: https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration

register(process.env.SERVICE_WORKER_FILE, {
  // The registrationOptions object will be passed as the second argument
  // to ServiceWorkerContainer.register()
  // https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/register#Parameter

  // registrationOptions: { scope: './' },

  ready(/* registration */) {
    console.log('Service worker is active.')
  },

  registered(/* registration */) {
    // console.log('Service worker has been registered.')
  },

  cached(/* registration */) {
    // console.log('Content has been cached for offline use.')
  },

  updatefound(/* registration */) {
    // console.log('New content is downloading.')
  },

  updated(/* registration */) {
    // console.log('New content is available; please refresh.')
  },

  offline() {
    console.log('No internet connection found. App is running in offline mode.')
    // This is the "Offline page" service worker

    importScripts('https://storage.googleapis.com/workbox-cdn/releases/5.1.2/workbox-sw.js');

    const CACHE = "pwabuilder-page";

    // TODO: replace the following with the correct offline fallback page i.e.: const offlineFallbackPage = "offline.html";
    const offlineFallbackPage = "#offline";

    self.addEventListener("message", (event) => {
      if (event.data && event.data.type === "SKIP_WAITING") {
      self.skipWaiting();
      }
    });

    self.addEventListener('install', async (event) => {
      event.waitUntil(
        caches.open(CACHE)
          .then((cache) => cache.add(offlineFallbackPage))
      );
    });

    if (workbox.navigationPreload.isSupported()) {
      workbox.navigationPreload.enable();
    }

    self.addEventListener('fetch', (event) => {
      if (event.request.mode === 'navigate') {
        event.respondWith((async () => {
          try {
            const preloadResp = await event.preloadResponse;

            if (preloadResp) {
              return preloadResp;
            }

            const networkResp = await fetch(event.request);
            return networkResp;
            } catch (error) {

            const cache = await caches.open(CACHE);
            const cachedResp = await cache.match(offlineFallbackPage);
            return cachedResp;
            }
        })());
      }
    });
  },

  error(/* err */) {
    // console.error('Error during service worker registration:', err)
  },
});
