Discogs-ObjC
============

An Objective-C wrapper for the Discogs API v2.0 (http://discogs.com/developers/index.html)

Uses AFNetworking 2.0 and KeyValueObjectMapper 1.4 to wrap requests to the Discogs 2.0 API.

## Features

* Currently supports Artist, Release, Master, Label and Search requests
* Wraps responses in well formatted objects
* Keeps all properties read only
* Async-only requests using blocks

## Installation

* Install Cocoapods - in terminal type:

		[sudo] gem install cocoapods
		pod setup

* Create a file called podfile in your project root
* Add following text to your podfile:

		platform :ios '6.0'
		pod 'Discogs-ObjC'

* In terminal, type

		pod install

## Usage

### Getting Started
Import the header file

```objective-c
#import "Discogs-ObjC.h"
```

In your AppDelegate.m file add the following line to didFinishLaunchingWithOptions. This will define your user agent to be used against the API. 

```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [DCDiscogsApiConfiguration setUserAgent:@"My User Agent"];
    return YES;
}
```

### Retrieving an Artist
```objective-c

	DCDiscogsApiClient *client = [DCDiscogsApiClient new];
    [client getArtistWithBlock:45
                       success:^(DCArtist *artist) {
                           NSLog(@"%@", artist.name);
                       } failure:^(NSError *error) {
                           NSLog(@"Error %@", error.debugDescription);
                       }];

```

### Retrieving and Artist's Releases
```objective-c
	DCDiscogsApiClient *client = [DCDiscogsApiClient new];
    [client getArtistReleasesWithBlock:45 forPage:1 withNumberOfResults:10 success:^(DCArtistReleases *releases) {
        
        for (DCArtistRelease *release in releases.releases) {
            NSLog(@"%@", release.title);
        }
        
    } failure:^(NSError *error) {
        
        NSLog(@"Error %@", error.debugDescription);
    }];

```

### Retrieving a Release
```objective-c
	DCDiscogsApiClient *client = [DCDiscogsApiClient new];
	[client getReleaseWithBlock:1 success:^(DCRelease *release) {
        
        NSLog(@"%@", release.title);
        
    } failure:^(NSError *error) {
        
        NSLog(@"Error %@", error.debugDescription);
        
    }];
```


### Retrieving a Master
```objective-c
	DCDiscogsApiClient *client = [DCDiscogsApiClient new];
	[client getMasterWithBlock:5427 success:^(DCMaster *master) {
        
        NSLog(@"%@", master.title);
        
    } failure:^(NSError *error) {
        NSLog(@"Error %@", error.debugDescription);
        
    }];
```


### Retrieving a Versions of a Master
```objective-c
	DCDiscogsApiClient *client = [DCDiscogsApiClient new];
	[client getMasterVersionsWithBlock:5427 forPage:1 withNumberOfResults:10 success:^(DCMasterVersions *versions) {
        NSLog(@"%lu", (unsigned long)[versions.versions count]);
        
        for (DCMasterVersion *master in versions.versions) {
            NSLog(@"%@", master.title);
        }
        
    } failure:^(NSError *error) {
        
        NSLog(@"Error %@", error.debugDescription);
        
    }];
```

### Retrieving a Label
```objective-c
	DCDiscogsApiClient *client = [DCDiscogsApiClient new];
	[client getLabelWithBlock:1 success:^(DCLabel *label) {
        
        NSLog(@"%@", label.name);
        
    } failure:^(NSError *error) {
        
        NSLog(@"Error %@", error.debugDescription);
        
    }];
```

### Retrieving a Label's Releases
```objective-c
	DCDiscogsApiClient *client = [DCDiscogsApiClient new];
	[client getLabelReleasesWithBlock:1 forPage:1 withNumberOfResults:10 success:^(DCLabelReleases *releases) {
        
        for (DCLabelRelease *release in releases.releases) {
            NSLog(@"%@", release.title);
        }

    } failure:^(NSError *error) {
        
        NSLog(@"Error %@", error.debugDescription);
        
    }];
```


### Making a Search Request
```objective-c
	DCSearchRequest *search = [DCSearchRequest new];
    search.query = @"Rolling Stones";
    search.searchType = artist;
    
    DCDiscogsApiClient *client = [DCDiscogsApiClient new];
    [client getSearchResultsWithBlock:search forPage:1 withNumberOfResults:10 success:^(DCSearchResults *results) {
        
        for (DCSearchResult *result in results.results) {
            NSLog(@"%@", result.title);
        }
        
    } failure:^(NSError *error) {
        
        NSLog(@"Error %@", error.debugDescription);
        
    }];
```
