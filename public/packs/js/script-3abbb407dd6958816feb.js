/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/script.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/script.js":
/*!****************************************!*\
  !*** ./app/javascript/packs/script.js ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports) {

document.getElementById("menubutton").addEventListener("click", function () {
  document.getElementById("menubutton").classList.toggle("active");
  document.getElementById("menu").classList.toggle("active");
  document.getElementById("mask").classList.toggle("active");
});

window.onpageshow = function (event) {
  if (event.persisted) {
    window.location.reload(true);
  }
};

window.onload = function () {
  document.getElementById("animation-picture1 animation-target").classList.add("show");
  document.getElementById("animation-picture2 animation-target").classList.add("show");
  document.getElementById("top-wrapper-theme1").classList.add("show");
  document.getElementById("top-wrapper-theme2").classList.add("show");
};

var showElement = document.querySelectorAll(".animation-text");
window.addEventListener("scroll", function () {
  for (var i = 0; i < showElement.length; i++) {
    var getElementDistance = showElement[i].getBoundingClientRect().top + showElement[i].clientHeight * .5;

    if (window.innerHeight > getElementDistance) {
      showElement[i].classList.add("show");
    }
  }
});
var showElement2 = document.querySelectorAll(".animation-box");
window.addEventListener("scroll", function () {
  for (var i = 0; i < showElement2.length; i++) {
    var getElementDistance2 = showElement2[i].getBoundingClientRect().top + showElement2[i].clientHeight * .5;

    if (window.innerHeight > getElementDistance2) {
      showElement2[i].classList.add("show");
    }
  }
});
document.getElementById("modal1-open").addEventListener("click", function () {
  document.getElementById("modal1").classList.add("active");
  document.getElementById("mask1").classList.add("active");
});
document.getElementById("modal1-close").addEventListener("click", function () {
  document.getElementById("modal1").classList.remove("active");
  document.getElementById("mask1").classList.remove("active");
});
document.getElementById("modal2-open").addEventListener("click", function () {
  document.getElementById("modal2").classList.add("active");
  document.getElementById("mask2").classList.add("active");
});
document.getElementById("modal2-close").addEventListener("click", function () {
  document.getElementById("modal2").classList.remove("active");
  document.getElementById("mask2").classList.remove("active");
});
document.getElementById("modal3-open").addEventListener("click", function () {
  document.getElementById("modal1").classList.add("active");
  document.getElementById("mask1").classList.add("active");
});

/***/ })

/******/ });
//# sourceMappingURL=script-3abbb407dd6958816feb.js.map