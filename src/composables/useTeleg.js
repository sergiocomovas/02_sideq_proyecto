/* eslint-disable no-undef */
/* eslint-disable eqeqeq */
/* eslint-disable no-plusplus */
/* eslint-disable no-redeclare */
/* eslint-disable guard-for-in */
/* eslint-disable no-restricted-syntax */
/* eslint-disable block-scoped-var */
/* eslint-disable no-var */
/* eslint-disable vars-on-top */
export function nodeToDom(node) {
  if (typeof node === 'string' || node instanceof String) {
    return document.createTextNode(node);
  }
  if (node.tag) {
    var domNode = document.createElement(node.tag);
    if (node.attrs) {
      for (var name in node.attrs) {
        var value = node.attrs[name];
        domNode.setAttribute(name, value);
      }
    }
  } else {
    var domNode = document.createDocumentFragment();
  }
  if (node.children) {
    for (var i = 0; i < node.children.length; i++) {
      var child = node.children[i];
      domNode.appendChild(nodeToDom(child));
    }
  }
  return domNode;
}
