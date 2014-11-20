//
//  xtzViewController.m
//  testing
//
//  Created by Ehkalu Moo on 11/18/14.
//  Copyright (c) 2014 Ehkalu Moo. All rights reserved.
//

#import "xtzViewController.h"
#import "DetailViewController.h"

@interface xtzViewController ()
{
    NSMutableArray *titleArray;
    NSMutableArray *subtitleArray;
   
}
@property (strong, nonatomic) NSArray *array;
@property (strong, nonatomic) NSArray *searchResults;

@end

@implementation xtzViewController

@synthesize mytableview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mytableview.delegate = self;
    self.mytableview.dataSource = self;
    
    titleArray = [[NSMutableArray alloc] initWithObjects:@"a     (art)",@"aback   (adv)",@"abandon/abandonment  (v.t) (n)",@"abase     (v.t)",@"abash    (v.t)",@"abate/ abatement    (n)",@"abbess   (n)",@"abbey   (n)",@"abbot  (n)", @"abbreviation   (n)", @"abdomen   (n)",@"abduction   (n)",@"abed   (v)",@"abide   (v)",@"ability   (n)",@"able   (art)",@"abolish   (v)",@"abortion   (n)",@"about   (prep)",@"above    (prep)",@"abrasion   (n)",@"abroad   (adv)",@"abrupt   (a)",@"abscess   (n)",@"absence   (n)",@"absent   (a)",@"absolute   (a)",@"absolutely   (adv)",@"absorb   (v)",@"absurd   (a)",@"abstain   (a)",@"abundant   (a)",@"abuse    (n)(v)",@"academic   (a)",@"accelerate   (v)",@"acceleration   (n)",@"accent   (n)",@"accept   (v)",@"access   (n)(v)",
                  
                  @"accessory   (n)",@"accident  (n)",@"accidentally   (adv)",@"accommodate   (v)",@"accompany   (v)",@"accomplish   (v)",@"accord   (n)(v)",@"accordion   (n)",@"account   (n)",@"accountant  (n)",@"accurate (a)",@"accuse (v)",@" accustom    (v)",@" ache    (n )",@"achievement   (n )",@"acid   (n )",@"acid rain   (n ),",@"acknowledge   (v)",@" acquaintance   (n )",@"acquire   (v)",@"acrobat   (n)",@"across   (prep)",@" act   (v)",@" action   (n)",@" active   (a )",@"activity   (n )",@"actor   (n)",@" actress   (n)",@" actual   (a)",@" acute   (a)",@"adam's apple   (n)",@"adapt   (v)",@"add   (v)",@"addict   (n)",@"addicted   (a)",@" addition    (n )",@"additional   (a)"
                  
                  ,@"address   (n)",@" adequate   (a )",@"adhesive   (a)",@" adjacent   (a)",@" adjective   (n)",@"adjust   (v )",@"administration   (n )",@"administrator   (n)",@" admiral   (n )",@"admiration   (n)",@"admire   (v)",@"admit   (v)" ,@"adolescent   (n)" ,@"adopt   (v)",@" adore   (v)",@" adult   (n)",@"adultery   (n)",@" advance   (v)",@" advantage   (n)",@" adventure   (n)",@" adverb   (n )",@"adversity   (n)",@" advertise   (v)",@" advertisement   (n)",@" advice   (n)",@" advise   (v)",@" advocate   (n)(v)",@"adze   (n)",@" aerial   (n )",@"aeroplane   (n)",@" aestivation   (n)",@" affair   (n)",@"affect   (v)",@" affection  (n)",@"affiliate   (v)",@" afford   (v)",@" afforestation  (n)",@" afloat   (a)",nil];
    
    

    
    
    subtitleArray =[[NSMutableArray alloc] initWithObjects:@"wX<w (rHR< cg)",@"o;vDRuwkR<o;vDRxl.",@"(w>)pl;uGHmnduGHmoyS>yS><[;o'.uGHm",@"rRzk.vDR(to;)<rR[;*DRtvRuyDR", @"'k;rJmqS;<rRrJmqS;",@"(w>)qH;vDRpSRvDR<(w>)rRp>vDR",@"rJmoH.v;tcd.",@"y&H.uGH.tpDRoDwz.ttd.w>tvD>",@"pDRoD'd.<oDcg'd.", @"w>uwdRtzk.I w>uwdRwzsX.vXyuGJ;tDRvXtzk. t'd< (rh) ] rhwrh>",@"[XzX",@"w>zD.ql.ySR< w>Ch>pdmql.ySR",@"oq.xD.w>tXtcH< rRxGJw>tXtcH",@"wD'D;w>tX.vDR< 'due.rRxGJw>od.w>oD",@"w>ohw>b.I t'd<etd.'D;w>ohw>b.vXw>od.vdvHm",@"uJ ̃ oh ̃ vXttd.'D;*H>bg ̃ wRv.vXurRw>t*D>",@"rR[;*DRuGHm ̃ rRuwX>uGHm",@"[k;[;*DR ̃ w>zdvDRvl;",@"1I C.C. 2I b.C;'D;",@"1I t'Dcd. ̃ tzDcd. 2I (upDR)xD.xDe‹>'H;",@"vDRobsL",@"vDRobsL",@"owl>uvm",@"w>0h",@"w>wtd.b.< tw[Jb.< twyX>xD.b.",@"wtd.vX—b.I t'd< pDRvgySJRwtd.vX[H.b.",@"tvXtySJR< vXmvXmqhqh",@"vXmvXmqhqh< eD>eD>",@"pl>oH;",@"vXtwClvdmo;'D;w>oh.nge>yX>< vXtwvDRemySRb.I",@"w[h.w>z;< [;qSJ;vXu[h.w>z;",@"vXttgt*D>",@"w>rRw&Dwyg ̃ w>rRtXrRoD< w>rRur.rRw&Dwyg ̃ y,JG ̃ rRtXrRoD< rRur.",@"vXtb.C;'D;w>rRvdvHm'd.vJ>xD< vXt'k;eJ.zsgw>oh.nge>yX>vX ([J) vXvHm{dRvJ>{dR",@"cs›xD.< rRcs›xD.",@"w>rRcs›xD.w>",@"uvk>uwdRtoD.",@"wl>vdm",@"1I w>vJREkmb.< w>vJRqlttd.tcGJ;td. 2I w>rRM>tgxD. w> 3I w>td.vXeupl;ugtDRt*D>1I vJREkmb.< vJRqlttd.tcGJ;td. 2I rRM>tgxD.w>3I td.vXw>upl;ugtDRt*D>",
                    
                    @"1I ySRvXttd.ySdRrRpXRw>tXw>oD2I w>tyD;tvDvXtrRpXRw>trd>yS>< yD;vDtbsJ.",@"w>b.zk;I w>rRto;b.zk;b.ysD>",@"b.qX.b.wDR< b.twDR",@"1I rRb.vdmw>< rRClvdmzd;vdmto;'D;w>*R2I uwDRM>w>td.w>qd;tvD>< [h.'k;td.",@"1I vJRCkm'D; 2I ydmtcH",@"rR0HRrRuJ< rRvXrRySJR",@"w>Clvdmto;< w>vDRyvdmvdmto;< w>rRClrRzd; Clvdmto;< vDRyvdmvdmto;< rRClrRzd;",@"we>xk;pk",@"1I t*h>tusdR 2I php&D",@"ySRzD.php&D",@"vXtvDRwH>vDRqJ;",@"qSd;< ymw>ur.vXySRvdR",@"'k;rRnDEk> (to;)< 'k;uJxD.tvk>tv>",@"wuHy0H< qg",@"w>rRM> ̃ w>rR0HRw>",@"1I *mqH. 2I wRqH.",@"*mqH.w>plRxH",@"tX.vDRtDvDRvXtoh.ng< tX.vDRvXt'd;M>vH< 'k;oh.ng",@"w>oh.ngvdmo;< ySRvXyoh.ngtDR< w>oh.ng",@"M>< rRM>< yS›RM>< CkrRM>",@"ySRwcUcHwcU,D>",@"vJR)cD*m ̃ (rR)'D.wlm",@"1I eJ.'d 2I rR(w>)",@"1I w>eJ.'d 2I w>rR(w>)",@"vXt[l;*JR",@"w>[l;w>*JR< w>zH;w>rR",@"cGg*JR'd",@"rk.*JR'd",@"eD>eD> ̃ vXtrh>0JeD>eD>",@"1I w>qgvXe;'D;yX>xD.owl>uvm2I w>wl>b.vXtqge;e;uvJm",@"udmwe‹o.< udm,l>wMo.",@"rRb.vdm< rRw>'fod;ub.bsd;b.'guhR",@"ymzSd.(w>) ̃ ymzSd.'D; ̃ rRtgxD.",@"ySRvXtnDek>tDoH;< tDrdm< pJuoH.rlRbSD;",@"uJxD.tvk>tv>I t'd< nDEk>tDoH;",@"w>ymzSd. ̃ w>rRtgxD.",@"vXw>*RtrJmng< toD(wrHR)",
                    
                    @"td.qd;vD>usJ ̃ vD>td.vD>qd;",@"vXtvX0JvD.0JvXw>wrHRrHRt*D>",@"vXtpJbl; ̃ vXtyHm",@"vXtbl;'D;",@"rHRu,X ̃ eD>u,X",@"usJRvdR ̃ usJRb.",@"w>yXw>qSX",@"ySRyXqSXw>",@"xHok;rk>cd.usX>",@"w>ym'd.< w>ymzsgvXtrh>w>vDRpH;y-wXR",@"b.ol.b.o;",@"1I wl>vdm 2I tX.vDR(w>vXtrR0J)",@"ySRvd.bd",@"vk>zd",@"tJ.vXo;'DzsX.",@"ySR'd.wkm",@"w>tJ.bXrgtJ.bX0R",@"vJRqlng ̃ 'd.xD.xDxD.",@"w>b.bsK;",@"w>rRw>vXo;'l",@"0D>u,X",@"w>wwX>weg< w>uDw>cJ< w>[J0HtX",@"'k;[lxD.ogvDR< bd;b.oh.ng",@"w>bd;b.oh.ng",@"w>[h.ul.",@"[h.ul.w>",@"ySRvXtwdpXRw>uwdRpXRw>< rRpXRw>'ftw>emtd.0Jtod;< uwdRpXRw>'ftw>emtod;",@"uGgwJ",@"uGJRvhvdRt'H; ̃ uGJR[lzsgt'H;",@"ubD,lR",@"q.zduD>zdtd.'k;zJw>ud>uwD>",@"1I w>trl;t&>< w>vXtrRto;< 2I w>vXtb.C;'D;ySR (w*R) 3I w>tJ.bXrg0R< w>rHCkmvXwzsDto;",@"rRb.'d",@"w>tJ.",@"w>&hvdmrRoud;w>< rRb.xGJvdmw>",@"wl>w>tyS›R",@"w>uwDRoh.yS>< w>ol.vDRoh.yS>",@"vXtxD.zD",nil];
    

    self.searchResults = [[NSArray alloc] init];
    
    
}

-(NSInteger) numberOfSectionInTableView:(UITableView *)tableview
{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [self.searchResults count];
        
    } else
    {
        return [titleArray count];
        return [subtitleArray count];
        
    }

    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellidentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier forIndexPath:indexPath];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifier];
    }
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [self.searchResults objectAtIndex:indexPath.row];
        
    } else
    {
        cell.textLabel.text = [titleArray objectAtIndex:indexPath.row];
        cell.detailTextLabel.text = [subtitleArray objectAtIndex:indexPath.row];

        
    }

    
    
    return cell;
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    if ([segue.identifier isEqualToString:@"detailSegue"])
    {
        NSIndexPath *indexpath = nil;
        NSString    *titlestring = nil;
        NSString    *subtitlestring =nil;
        
        indexpath = [mytableview indexPathForSelectedRow];
        titlestring = [titleArray objectAtIndex:indexpath.row];
        subtitlestring = [subtitleArray objectAtIndex: indexpath.row];
        
        [[segue destinationViewController] setTitlecontents:titlestring];
        [[segue destinationViewController] setSubtitlecontents:subtitlestring];
        
    }
}

#pragma Search Methods

- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF beginswith[c] %@", searchText];
    //NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"contains[c] %@", searchText];
    self.searchResults = [self.array filteredArrayUsingPredicate:predicate];
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}

-(IBAction)goToSearch:(id)sender
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
