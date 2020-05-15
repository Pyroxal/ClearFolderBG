#import <Foundation/Foundation.h>

@interface SBWallpaperEffectView : UIView
@property (nonatomic, strong) UIView *blurView;
@end

@interface SBFolderIconBackgroundView : UIView
@end

@interface SBFolderIconImageView : UIView
@property (nonatomic, strong) SBWallpaperEffectView *backgroundView;
@end

%hook SBFolderIconImageView

-(void)layoutSubviews {
	%orig;
	self.backgroundView.alpha = 0;
	self.backgroundView.hidden = 1;
}

%end