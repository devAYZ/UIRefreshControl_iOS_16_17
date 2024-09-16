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


## Solution 1 (Note)
- the refreshing actually works with Solution 1's viewDidAppear(_), because if a gentle pull down is applied on the screen the refresh control is revealed.
- Summarily, it appears that viewDidAppear(_) is too late to handle this with respect to view life cycles
- Also viewDidLoad(_), viewWillAppear(_) are to early.


## Solution 2
- In iOS 17, Apple introduced a new life cycle in iOS 17, viewIsAppearing(_)
- having the refresh method in the life cycle hierarchy fixes the issue


## Solution 2 (Note)
- viewIsAppearing(_) is backwards compartible all the way down to iOS 13.
- to use this method, you need to be running on XCode 15 and above


## Linkd
- Apple Documentation [link](https://developer.apple.com/documentation/uikit/uiviewcontroller/4195485-viewisappearing)
- ohmyswift's usage [link](https://ohmyswift.com/blog/2023/11/30/from-viewwillappear-to-viewisappearing-perfecting-your-ios-view-transitions/)
- Essential Developer youtube [link](https://www.youtube.com/watch?v=n9ObNkPP5GY)
- Liamnichols's environment compatibiity [link](https://liamnichols.eu/2023/06/12/view-is-appearing.html)
