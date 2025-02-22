'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "1dc5d947bdb6152a48b39f8483aff517",
"assets/AssetManifest.bin.json": "b988c88576f600e36def1ab2af3c70ec",
"assets/AssetManifest.json": "856666d0a2065cd6468d688dbc61f3ab",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/lib/assets/image/bg-pattern-footer-desktop.svg": "1586c300d23ec651816b4fbe776ce89a",
"assets/lib/assets/image/bg-pattern-footer-mobile.svg": "c33e3a526c0d772e3611831d1e3fc838",
"assets/lib/assets/image/bg-pattern-how-we-work-desktop.svg": "4abb74643a40d67264d0e192655faa22",
"assets/lib/assets/image/bg-pattern-how-we-work-mobile.svg": "a4de14b0ee74ee9f31076b875f4ef78e",
"assets/lib/assets/image/bg-pattern-intro-left-desktop.svg": "600d644489d031fb0e8be595b58bfa37",
"assets/lib/assets/image/bg-pattern-intro-left-mobile.svg": "562149a81a4a5d64fcb7309999bdbcf9",
"assets/lib/assets/image/bg-pattern-intro-right-desktop.svg": "fc61cf1f05af8c8a0a1589173cd5a6a6",
"assets/lib/assets/image/bg-pattern-intro-right-mobile.svg": "ef3d23bd373b877c0f109cf00fccdd0d",
"assets/lib/assets/image/bg-pattern-mobile-nav.svg": "2922ed2c81c026d066328fbea874fefb",
"assets/lib/assets/image/icon-affordable-prices.svg": "b9dc0b5c6bd0cf4ddcd5ce9f3ad16897",
"assets/lib/assets/image/icon-close.svg": "d57cc9d5ede81487205ac0071030bb57",
"assets/lib/assets/image/icon-facebook.svg": "6fd0e32479e7d8af8e471d2a34244e93",
"assets/lib/assets/image/icon-hamburger.svg": "d98c1990131df21b2dc25cd8c1382819",
"assets/lib/assets/image/icon-instagram.svg": "48a204c8175de66e9c8f1b9207cc77eb",
"assets/lib/assets/image/icon-people-first.svg": "b264095b9d9862f3cc93d449508b65fd",
"assets/lib/assets/image/icon-pinterest.svg": "275a65a2fef7bff622ba4fb6e7aa57eb",
"assets/lib/assets/image/icon-snappy-process.svg": "3cc5dc39b6297427126b6a7389e9b76d",
"assets/lib/assets/image/icon-twitter.svg": "6eef62ff8487d0c9808c68e74d68d9c8",
"assets/lib/assets/image/image-intro-desktop.jpg": "8ac69ec7c30fa6465fa05426a4b235f4",
"assets/lib/assets/image/image-intro-mobile.jpg": "09a91c1a381a6fc1ecb8512490b74a12",
"assets/lib/assets/image/logo.svg": "1bc452ac6f5856ef32a25e4519a4db91",
"assets/NOTICES": "35c56ad14bd064d56b7dd7104374d331",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "9089fb7bc41503f490b3a52f4034938a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "19b2343a35686ce9d29cde8b9c53cf57",
"/": "19b2343a35686ce9d29cde8b9c53cf57",
"main.dart.js": "3a79f4a2bb67ffc54662166874e92b57",
"manifest.json": "5d75cccf3b656c1c76371e8d50a50254",
"version.json": "196f4d196ecb9aa91e8bc9a2f3fd920f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
