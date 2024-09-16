# UIRefreshControl_iOS_16_17
Testing UIRefreshControl on iOS16 and iOS 17


## iOS 16
- Works fine on iOS 16


## UIRefreshControl error on iOS 17
- A UIRefreshControl received offscreen beginRefreshing. Ignored. Break on UIRefreshControlReceivedOffscreenBeginRefreshing to debug. <UIRefreshControl: 0x1042081c0; frame = (0 0; 0 60); hidden = YES; autoresize = W; layer = <CALayer: 0x60000022f580>>


## Reason for failure on iOS 17
- UIRefreshControl ignores calls to begin refreshing if it's not on screen
- viewDidLoad(_), viewWillAppear(_); these methods anwsers to life cycles that are not on screen yet


## Solution 1
-  viewDidAppear(_) method is called when views are on Screen already, so this will fixed the "UIRefreshControlReceivedOffscreenBeginRefreshing error"
- but the UIRefreshControl will not still start to refrest on iOS 17
