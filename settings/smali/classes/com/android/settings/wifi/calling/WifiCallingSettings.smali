.class public Lcom/android/settings/wifi/calling/WifiCallingSettings;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "WifiCallingSettings.java"

# interfaces
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;
    }
.end annotation


# instance fields
.field private mPagerAdapter:Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;

.field private mSil:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTabLayout:Lcom/android/settings/widget/SlidingTabLayout;

.field private mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/calling/WifiCallingSettings;

    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    return-object v0
.end method

.method private updateSubList()V
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    if-nez v0, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    .line 157
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 156
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 158
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 161
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 163
    .end local v1
    :goto_1
    goto :goto_0

    .line 164
    .end local v0
    :cond_2
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 99
    const v0, 0x7f1206af

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 57
    const/16 v0, 0x69

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->setHasOptionsMenu(Z)V

    .line 78
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V

    .line 79
    invoke-static {p0}, Lcom/android/settings/support/actionbar/HelpMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->updateSubList()V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    const v0, 0x7f0d0234

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a03e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SlidingTabLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mTabLayout:Lcom/android/settings/widget/SlidingTabLayout;

    .line 66
    const v1, 0x7f0a04dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/RtlCompatibleViewPager;

    iput-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 68
    new-instance v1, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Landroid/app/FragmentManager;Lcom/android/settings/widget/RtlCompatibleViewPager;)V

    iput-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mPagerAdapter:Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;

    .line 69
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mPagerAdapter:Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStart()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mTabLayout:Lcom/android/settings/widget/SlidingTabLayout;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SlidingTabLayout;->setViewPager(Lcom/android/settings/widget/RtlCompatibleViewPager;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mTabLayout:Lcom/android/settings/widget/SlidingTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SlidingTabLayout;->setVisibility(I)V

    .line 95
    :goto_0
    return-void
.end method
