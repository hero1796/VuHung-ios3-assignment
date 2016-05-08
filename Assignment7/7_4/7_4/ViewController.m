//
//  ViewController.m
//  7_4
//
//  Created by Hung Ga 123 on 4/23/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"
@import MediaPlayer;
@interface ViewController ()
//{
//    AVAudioPlayer *audioPlayer;
//}
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [NSString stringWithFormat:@"%@/All I Want - Kodaline [MP3 128kbps].mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    MPRemoteCommandCenter *remoteCommand = [MPRemoteCommandCenter sharedCommandCenter];
    [remoteCommand.playCommand addTarget:self action:@selector(play)];
    [remoteCommand.nextTrackCommand addTarget:self action:@selector(nextTrackCommand)];
    [remoteCommand.seekForwardCommand addTarget:self action:@selector(seekForwardCommand)];
    
}
-(void) play {
    [_audioPlayer play];
    [self displayInfo];
}
-(void) seekForwardCommand {
    _audioPlayer.rate=2.0f;
}
-(void) nextTrackCommand {
    
}
-(void) displayInfo {
    MPNowPlayingInfoCenter* info = [MPNowPlayingInfoCenter defaultCenter];
    NSMutableDictionary *newInfo = [[NSMutableDictionary alloc] init];
    [newInfo setObject:@"i just" forKey:MPMediaItemPropertyTitle];
    [newInfo setObject:@" akon" forKey:MPMediaItemPropertyArtist];
    info.nowPlayingInfo = newInfo;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
