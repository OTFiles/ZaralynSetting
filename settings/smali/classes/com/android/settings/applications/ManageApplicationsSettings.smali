.class public Lcom/android/settings/applications/ManageApplicationsSettings;
.super Landroid/app/Fragment;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;,
        Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    }
.end annotation


# static fields
.field public static mAppsSearchKey:Ljava/lang/String;


# instance fields
.field private btn_clean_search:Landroid/widget/Button;

.field private btn_start_search:Landroid/widget/Button;

.field private edit_search_text:Landroid/widget/EditText;

.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field public mAppsSearchType:Ljava/lang/String;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsFirstEnterFragment:Z

.field private mNumTabs:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootViewFull:Landroid/view/View;

.field private mRunnable1:Ljava/lang/Runnable;

.field private mRunnable2:Ljava/lang/Runnable;

.field private mSearchappEnabled:Z

.field private mShowBackground:Z

.field private mSortOrder:I

.field private mSpinner:Landroid/widget/Spinner;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private moreButton:Landroid/view/View;

.field private onMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private stripTabs:Lcom/android/settings/view/LocalPagerTitleStrip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 225
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mHandler:Landroid/os/Handler;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mActivityResumed:Z

    .line 635
    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mIsFirstEnterFragment:Z

    .line 644
    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mShowBackground:Z

    .line 646
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mDefaultListType:I

    .line 1350
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$7;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mRunnable1:Ljava/lang/Runnable;

    .line 1365
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$8;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mRunnable2:Ljava/lang/Runnable;

    .line 1904
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$11;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContainerConnection:Landroid/content/ServiceConnection;

    .line 1972
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$12;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->onMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/ManageApplicationsSettings;)Lcom/android/settings/view/LocalPagerTitleStrip;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->stripTabs:Lcom/android/settings/view/LocalPagerTitleStrip;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->btn_start_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->btn_clean_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->edit_search_text:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/applications/ManageApplicationsSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mIsFirstEnterFragment:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/settings/applications/ManageApplicationsSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;
    .param p1, "x1"    # Z

    .line 168
    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mIsFirstEnterFragment:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mRunnable2:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/applications/ManageApplicationsSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings/applications/ManageApplicationsSettings;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/settings/applications/ManageApplicationsSettings;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .line 168
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/settings/applications/ManageApplicationsSettings;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;
    .param p1, "x1"    # Landroid/view/Menu;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplicationsSettings;->updatePopuMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplicationsSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplicationsSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mNumTabs:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mRootViewFull:Landroid/view/View;

    return-object v0
.end method

.method private locateIndex(I)I
    .locals 2
    .param p1, "appInstallID"    # I

    .line 1771
    const/4 v0, 0x2

    .line 1772
    .local v0, "selectedLocation":I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1773
    const/4 v0, 0x0

    goto :goto_0

    .line 1774
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 1775
    const/4 v0, 0x1

    goto :goto_0

    .line 1776
    :cond_1
    if-nez p1, :cond_2

    .line 1777
    const/4 v0, 0x2

    .line 1779
    :cond_2
    :goto_0
    return v0
.end method

.method private showAppInstallLocationSettingDlg()V
    .locals 5

    .line 1783
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1785
    .local v0, "appInstallID":I
    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->locateIndex(I)I

    move-result v1

    .line 1787
    .local v1, "selectedLocation":I
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1789
    .local v2, "items":[Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120123

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/ManageApplicationsSettings$10;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$10;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    .line 1790
    invoke-virtual {v3, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1814
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1815
    return-void
.end method

.method private showInputmethod()V
    .locals 0

    .line 1938
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 9

    .line 1490
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1491
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/settings/SettingsActivity;

    .line 1494
    .local v8, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120156

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move-object v3, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1496
    return-void
.end method

.method private updateMoreButton(I)V
    .locals 1
    .param p1, "visibleState"    # I

    .line 1546
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->moreButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->moreButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1549
    :cond_0
    return-void
.end method

.method private updateNumTabs()V
    .locals 3

    .line 1452
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1459
    .local v0, "newNum":I
    :goto_0
    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mNumTabs:I

    if-eq v0, v1, :cond_2

    .line 1460
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 1462
    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mNumTabs:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mNumTabs:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1463
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1464
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(I)V

    .line 1467
    :cond_1
    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mNumTabs:I

    .line 1468
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateStripTabs()V

    .line 1469
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_3

    .line 1470
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1473
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateStripTabs()V

    .line 1475
    :cond_3
    :goto_1
    return-void
.end method

.method private updatePopuMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1552
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 1560
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1561
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f120d58

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1562
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1563
    const/4 v3, 0x5

    const/4 v4, 0x2

    const v5, 0x7f120d5b

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1564
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1565
    const/4 v3, 0x3

    const/4 v4, 0x6

    const v5, 0x7f120cfa

    invoke-interface {p1, v2, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 1566
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1567
    const/4 v4, 0x7

    const v5, 0x7f120ce6

    invoke-interface {p1, v2, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1568
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1569
    const/16 v1, 0x8

    const v3, 0x7f120bc3

    invoke-interface {p1, v2, v1, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1570
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1578
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateOptionsMenu()V

    .line 1579
    return-void
.end method

.method private updateStripTabs()V
    .locals 5

    .line 1887
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->stripTabs:Lcom/android/settings/view/LocalPagerTitleStrip;

    if-eqz v0, :cond_2

    .line 1888
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mNumTabs:I

    new-array v0, v0, [Ljava/lang/String;

    .line 1889
    .local v0, "titles":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mNumTabs:I

    if-ge v2, v3, :cond_0

    .line 1890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v4, v4, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1889
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1892
    .end local v2
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->stripTabs:Lcom/android/settings/view/LocalPagerTitleStrip;

    invoke-virtual {v2, v0}, Lcom/android/settings/view/LocalPagerTitleStrip;->setTitleArray([Ljava/lang/String;)V

    .line 1893
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1894
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1895
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->stripTabs:Lcom/android/settings/view/LocalPagerTitleStrip;

    invoke-virtual {v1, v2}, Lcom/android/settings/view/LocalPagerTitleStrip;->select(I)V

    goto :goto_1

    .line 1897
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->stripTabs:Lcom/android/settings/view/LocalPagerTitleStrip;

    invoke-virtual {v3, v1}, Lcom/android/settings/view/LocalPagerTitleStrip;->select(I)V

    .line 1900
    .end local v0
    .end local v2
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .line 1625
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1626
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1627
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f120bc6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1628
    const v1, 0x7f120bc5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1629
    const v1, 0x7f120bc4

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1630
    const v1, 0x7f120358

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    .line 1632
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1634
    .end local v0
    :cond_0
    return-void
.end method

.method public getAppsSearchType(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1646
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    move-object/from16 v9, p1

    if-ne v0, v9, :cond_0

    .line 1647
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1648
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "package"

    .line 1649
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1648
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 1650
    .local v11, "mIPm":Landroid/content/pm/IPackageManager;
    const-string v0, "notification"

    .line 1651
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1650
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v12

    .line 1652
    .local v12, "nm":Landroid/app/INotificationManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v13

    .line 1653
    .local v13, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/AppOpsManager;

    .line 1655
    .local v14, "aom":Landroid/app/AppOpsManager;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1656
    .local v7, "handler":Landroid/os/Handler;
    new-instance v15, Lcom/android/settings/applications/ManageApplicationsSettings$9;

    move-object v0, v15

    move-object v1, v8

    move-object v2, v10

    move-object v3, v12

    move-object v4, v11

    move-object v5, v14

    move-object v6, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ManageApplicationsSettings$9;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1726
    invoke-virtual {v15, v0}, Lcom/android/settings/applications/ManageApplicationsSettings$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1728
    .end local v7
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1087
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContext:Landroid/content/Context;

    .line 1092
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1093
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1094
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1095
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1096
    .local v2, "defaultListType":I
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "classname"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1098
    .local v3, "className":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_1

    .line 1099
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1101
    :cond_1
    const-class v4, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ".RunningServices"

    .line 1102
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 1104
    :cond_2
    const-class v4, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    .line 1105
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".StorageUse"

    .line 1106
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1109
    :cond_3
    const-string v4, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1111
    const/4 v2, 0x3

    goto :goto_3

    .line 1107
    :cond_4
    :goto_1
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    .line 1108
    const/4 v2, 0x3

    goto :goto_3

    .line 1103
    :cond_5
    :goto_2
    const/4 v2, 0x1

    .line 1114
    :cond_6
    :goto_3
    if-eqz p1, :cond_8

    .line 1115
    const-string v4, "sortOrder"

    iget v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    .line 1116
    const-string v4, "defaultListType"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1117
    .local v4, "tmp":I
    if-eq v4, v5, :cond_7

    move v2, v4

    .line 1118
    :cond_7
    const-string v5, "showBackground"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mShowBackground:Z

    .line 1121
    .end local v4
    :cond_8
    const-string v4, ""

    sput-object v4, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    .line 1122
    iput v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mDefaultListType:I

    .line 1123
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mIsFirstEnterFragment:Z

    .line 1125
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    sget-object v6, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1126
    .local v5, "containerIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v5, v7, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f120729

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f1203c2

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 1131
    new-instance v4, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1132
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f120620

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v6, v4

    move-object v7, p0

    move-object v11, p0

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1134
    .local v4, "tab":Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    new-instance v6, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f12061f

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-object v7, v6

    move-object v8, p0

    move-object v12, p0

    move-object v13, p1

    invoke-direct/range {v7 .. v13}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    move-object v4, v6

    .line 1146
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    new-instance v6, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1149
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f12061c

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    move-object v7, v6

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    move-object v4, v6

    .line 1151
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    new-instance v6, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1154
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f12061d

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    move-object v7, v6

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    move-object v4, v6

    .line 1156
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mNumTabs:I

    .line 1160
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 1161
    .local v6, "um":Landroid/os/UserManager;
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    .line 1164
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 1500
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 1503
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSearchappEnabled:Z

    .line 1508
    const v0, 0x7f120d58

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1509
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1510
    const/4 v0, 0x5

    const/4 v4, 0x2

    const v5, 0x7f120d5b

    invoke-interface {p1, v3, v0, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1511
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1512
    const/4 v0, 0x6

    const v4, 0x7f120cfa

    const/4 v5, 0x3

    invoke-interface {p1, v3, v0, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1513
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1514
    const/4 v0, 0x7

    const v4, 0x7f120ce6

    invoke-interface {p1, v3, v0, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1515
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1516
    const/16 v0, 0x8

    const v1, 0x7f120bc3

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1517
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1518
    const/16 v0, 0xa

    const v1, 0x7f120123

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1519
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1525
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateOptionsMenu()V

    .line 1526
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1170
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 1172
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d00e2

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1174
    .local v0, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContentContainer:Landroid/view/ViewGroup;

    .line 1175
    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mRootViewFull:Landroid/view/View;

    .line 1198
    const v2, 0x7f0a02ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 1199
    new-instance v2, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    .line 1200
    .local v2, "adapter":Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1201
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1204
    const v3, 0x7f0a0451

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/view/LocalPagerTitleStrip;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->stripTabs:Lcom/android/settings/view/LocalPagerTitleStrip;

    .line 1205
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->stripTabs:Lcom/android/settings/view/LocalPagerTitleStrip;

    new-instance v4, Lcom/android/settings/applications/ManageApplicationsSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$1;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/view/LocalPagerTitleStrip;->setListener(Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;)V

    .line 1217
    instance-of v3, p2, Landroid/preference/PreferenceFrameLayout;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1218
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v4, v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 1221
    :cond_0
    if-eqz p3, :cond_1

    const-string v3, "resetDialog"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1222
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->buildResetDialog()V

    .line 1225
    :cond_1
    const v3, 0x7f0a0159

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->edit_search_text:Landroid/widget/EditText;

    .line 1226
    const v3, 0x7f0a0096

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->btn_clean_search:Landroid/widget/Button;

    .line 1227
    const v3, 0x7f0a00a4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->btn_start_search:Landroid/widget/Button;

    .line 1228
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->edit_search_text:Landroid/widget/EditText;

    sget-object v5, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->btn_clean_search:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->edit_search_text:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1231
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->edit_search_text:Landroid/widget/EditText;

    new-instance v5, Lcom/android/settings/applications/ManageApplicationsSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$2;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1241
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->edit_search_text:Landroid/widget/EditText;

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1242
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->edit_search_text:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/custom/EditFilterName;

    new-instance v5, Lcom/android/settings/applications/ManageApplicationsSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$3;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->edit_search_text:Landroid/widget/EditText;

    invoke-direct {v4, v5, v6}, Lcom/android/settings/custom/EditFilterName;-><init>(Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1258
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->btn_clean_search:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/applications/ManageApplicationsSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$4;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1271
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->btn_start_search:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/applications/ManageApplicationsSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$5;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1287
    if-nez p3, :cond_5

    .line 1289
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "currentListType"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1291
    .local v3, "extraCurrentListType":I
    if-eq v3, v5, :cond_3

    .line 1292
    move v4, v3

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mDefaultListType:I

    .line 1293
    .local v4, "currentListType":I
    :goto_1
    nop

    .local v1, "i":I
    :goto_2
    iget v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mNumTabs:I

    if-ge v1, v5, :cond_5

    .line 1294
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 1295
    .local v5, "tab":Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    iget v6, v5, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    if-ne v6, v4, :cond_4

    .line 1296
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1297
    goto :goto_3

    .line 1293
    .end local v5
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1302
    .end local v1
    .end local v3
    .end local v4
    :cond_5
    :goto_3
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1540
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1541
    const-string v0, ""

    sput-object v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    .line 1542
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1543
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 1536
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1413
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1415
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 1418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1420
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->detachView()V

    .line 1422
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1421
    :catch_0
    move-exception v1

    .line 1424
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->release()V

    .line 1426
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1425
    :catch_1
    move-exception v1

    .line 1418
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1428
    .end local v0
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 1638
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    .line 1641
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "tab"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1819
    .local p2, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->getCount()I

    move-result v0

    if-le v0, p4, :cond_0

    .line 1820
    iget-object v0, p1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v0, p4}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1821
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurrentPkgName:Ljava/lang/String;

    .line 1822
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->startApplicationDetailsActivity()V

    .line 1824
    .end local v0
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1432
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1433
    .local v0, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1434
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1435
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1436
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1437
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 1438
    .local v2, "currentTab":I
    const-string v3, "currentListType"

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget v4, v4, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1439
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1442
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1444
    .end local v1
    .end local v2
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1449
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1732
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1733
    .local v0, "menuId":I
    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1738
    :cond_0
    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 1739
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mShowBackground:Z

    .line 1740
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$2400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1741
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$2400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_1

    .line 1743
    :cond_1
    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 1744
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mShowBackground:Z

    .line 1745
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$2400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1746
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$2400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_1

    .line 1748
    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 1749
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->buildResetDialog()V

    goto :goto_1

    .line 1752
    :cond_3
    const/16 v2, 0x9

    if-ne v0, v2, :cond_4

    .line 1753
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->showInputmethod()V

    goto :goto_1

    .line 1754
    :cond_4
    const/16 v2, 0xa

    if-ne v0, v2, :cond_5

    .line 1755
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->showAppInstallLocationSettingDlg()V

    goto :goto_1

    .line 1756
    :cond_5
    const/16 v2, 0xb

    if-ne v0, v2, :cond_6

    goto :goto_1

    .line 1762
    :cond_6
    return v3

    .line 1734
    :cond_7
    :goto_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    .line 1735
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-eqz v2, :cond_8

    .line 1736
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->rebuild(I)V

    .line 1764
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateOptionsMenu()V

    .line 1765
    return v1
.end method

.method public onPause()V
    .locals 2

    .line 1389
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mActivityResumed:Z

    .line 1391
    nop

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->pause()V

    .line 1391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1394
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 1395
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mPopupMenu:Landroid/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1397
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1530
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateOptionsMenu()V

    .line 1531
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1328
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mActivityResumed:Z

    .line 1332
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 1337
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1340
    .end local v0
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateNumTabs()V

    .line 1341
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateOptionsMenu()V

    .line 1342
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mPopupMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->onMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1346
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mRunnable1:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mIsFirstEnterFragment:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1f4

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0xa

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1348
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1376
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1377
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1378
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1379
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1381
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1382
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1383
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1385
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1323
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1324
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1401
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1403
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 1405
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mResetDialog:Landroid/app/AlertDialog;

    .line 1409
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1307
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1308
    const v0, 0x7f0a0282

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->moreButton:Landroid/view/View;

    .line 1309
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->moreButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/applications/ManageApplicationsSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$6;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1317
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0283

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1318
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updatePopuMenu(Landroid/view/Menu;)V

    .line 1319
    return-void
.end method

.method public setAppsSearchType(Ljava/lang/String;)V
    .locals 0
    .param p1, "searType"    # Ljava/lang/String;

    .line 1955
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchType:Ljava/lang/String;

    .line 1956
    return-void
.end method

.method tabForType(I)Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    .locals 3
    .param p1, "type"    # I

    .line 1478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1479
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 1480
    .local v1, "tab":Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    iget v2, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1481
    return-object v1

    .line 1478
    .end local v1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1484
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCurrentTab(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1827
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(IZ)V

    .line 1828
    return-void
.end method

.method public updateCurrentTab(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "forceUpdate"    # Z

    .line 1830
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;Z)V

    .line 1831
    return-void
.end method

.method public updateCurrentTab(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;Z)V
    .locals 5
    .param p1, "tab"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    .param p2, "forceUpdate"    # Z

    .line 1834
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 1837
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getAppsSearchType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->setAppsSearchType(Ljava/lang/String;)V

    .line 1839
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 1842
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mActivityResumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mRootViewFull:Landroid/view/View;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1844
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    invoke-virtual {v0, v2, p2}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->resume(IZ)V

    goto :goto_1

    .line 1846
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->pause()V

    .line 1847
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1848
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 1849
    .local v2, "t":Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eq v2, v3, :cond_1

    .line 1850
    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->pause()V

    .line 1847
    .end local v2
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1855
    .end local v0
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->updateStorageUsage()V

    .line 1857
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updatePopuMenu(Landroid/view/Menu;)V

    .line 1858
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1859
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1860
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1876
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1877
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateMoreButton(I)V

    goto :goto_2

    .line 1878
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget v2, v2, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1879
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateMoreButton(I)V

    goto :goto_2

    .line 1881
    :cond_5
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateMoreButton(I)V

    .line 1883
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateStripTabs()V

    .line 1884
    return-void
.end method

.method updateOptionsMenu()V
    .locals 10

    .line 1582
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 1583
    return-void

    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    if-ne v0, v6, :cond_3

    .line 1591
    invoke-virtual {p0, v6}, Lcom/android/settings/applications/ManageApplicationsSettings;->tabForType(I)Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    move-result-object v0

    .line 1592
    .local v0, "tab":Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$2400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1593
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$2400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v8}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v8

    goto :goto_0

    :cond_1
    move v8, v7

    .line 1594
    .local v8, "showingBackground":Z
    :goto_0
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v9, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1595
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v5, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1596
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1597
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1598
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1602
    iput-boolean v8, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mShowBackground:Z

    .line 1607
    .end local v0
    .end local v8
    goto :goto_4

    .line 1608
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v8, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    if-eq v8, v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v7

    :goto_2
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1609
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mSortOrder:I

    if-eq v5, v4, :cond_5

    move v4, v6

    goto :goto_3

    :cond_5
    move v4, v7

    :goto_3
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1610
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1611
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1612
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1622
    :goto_4
    return-void
.end method
