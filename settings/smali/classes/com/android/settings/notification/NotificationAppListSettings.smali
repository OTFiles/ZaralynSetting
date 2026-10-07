.class public Lcom/android/settings/notification/NotificationAppListSettings;
.super Lcom/android/settings/PinnedHeaderListFragment;
.source "NotificationAppListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAppListSettings$Backend;,
        Lcom/android/settings/notification/NotificationAppListSettings$AppRow;,
        Lcom/android/settings/notification/NotificationAppListSettings$Row;,
        Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;,
        Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final FILTER_APP_TO_DISALLOW:[Ljava/lang/String;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/NotificationAppListSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allBockedSiwtch:Landroid/widget/Switch;

.field private btn_clean_search:Landroid/widget/Button;

.field private btn_start_search:Landroid/widget/Button;

.field private canNotificationNum:I

.field private edit_search_text:Landroid/widget/EditText;

.field private mAdapter:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

.field private mBackend:Lcom/android/settings/notification/NotificationAppListSettings$Backend;

.field private mBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mEmptyView_:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationAppListSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/NotificationAppListSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;

.field private mUM:Landroid/os/UserManager;

.field private searchKeyValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 84
    const-string v0, "NotificationAppList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/NotificationAppListSettings;->DEBUG:Z

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAppListSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 111
    const-string v1, "com.android.dialer"

    const-string v2, "com.android.mms"

    const-string v3, "com.android.settings"

    const-string v4, "com.dream.eyescare"

    const-string v5, "com.readboy.arcface"

    const-string v6, "com.readboy.adblock"

    const-string v7, "com.dream.forcerest"

    const-string v8, "com.readboy.handwritingpen"

    const-string v9, "com.readboy.killapp"

    const-string v10, "com.android.packageinstaller"

    const-string v11, "com.android.defcontainer"

    const-string v12, "com.android.backup"

    const-string v13, "com.qualcomm.qti.poweroffalarm"

    const-string v14, "com.readboy.parentmanager"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAppListSettings;->FILTER_APP_TO_DISALLOW:[Ljava/lang/String;

    .line 559
    new-instance v0, Lcom/android/settings/notification/NotificationAppListSettings$6;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppListSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationAppListSettings;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/PinnedHeaderListFragment;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mRows:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSortedRows:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSections:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/android/settings/notification/NotificationAppListSettings$Backend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppListSettings$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mBackend:Lcom/android/settings/notification/NotificationAppListSettings$Backend;

    .line 190
    new-instance v0, Lcom/android/settings/notification/NotificationAppListSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAppListSettings$3;-><init>(Lcom/android/settings/notification/NotificationAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 625
    new-instance v0, Lcom/android/settings/notification/NotificationAppListSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAppListSettings$7;-><init>(Lcom/android/settings/notification/NotificationAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 781
    new-instance v0, Lcom/android/settings/notification/NotificationAppListSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAppListSettings$8;-><init>(Lcom/android/settings/notification/NotificationAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->btn_start_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->btn_clean_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationAppListSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->canNotificationNum:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/settings/notification/NotificationAppListSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->canNotificationNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/notification/NotificationAppListSettings;->canNotificationNum:I

    return v0
.end method

.method static synthetic access$1110(Lcom/android/settings/notification/NotificationAppListSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->canNotificationNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/notification/NotificationAppListSettings;->canNotificationNum:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationAppListSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAppListSettings;->updateAllAllowView(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppListSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->edit_search_text:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/notification/NotificationAppListSettings;)Lcom/android/settings/notification/NotificationAppListSettings$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mBackend:Lcom/android/settings/notification/NotificationAppListSettings$Backend;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/Comparator;
    .locals 1

    .line 81
    sget-object v0, Lcom/android/settings/notification/NotificationAppListSettings;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/notification/NotificationAppListSettings;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAppListSettings;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/notification/NotificationAppListSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->searchKeyValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/notification/NotificationAppListSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings;->searchKeyValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationAppListSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->loadAppsList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->allBockedSiwtch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/NotificationAppListSettings;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationAppListSettings;->updateAllAllowApp(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mEmptyView_:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationAppListSettings$AppRow;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationAppListSettings$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppListSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "NotificationAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " preference activities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " ;_;"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 605
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 606
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 607
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    .line 608
    .local v4, "row":Lcom/android/settings/notification/NotificationAppListSettings$AppRow;
    if-nez v4, :cond_2

    .line 609
    const-string v5, "NotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    goto :goto_1

    .line 614
    :cond_2
    iget-object v5, v4, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 615
    const-string v5, "NotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    goto :goto_1

    .line 620
    :cond_3
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings/notification/NotificationAppListSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 621
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 622
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    goto :goto_1

    .line 623
    :cond_4
    return-void
.end method

.method public static filterPkg(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .line 771
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 772
    sget-object v1, Lcom/android/settings/notification/NotificationAppListSettings;->FILTER_APP_TO_DISALLOW:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 773
    .local v4, "filPkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 774
    const/4 v0, 0x1

    return v0

    .line 772
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 778
    :cond_1
    return v0
.end method

.method private getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 360
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 362
    .local v0, "c":C
    const/16 v1, 0x41

    if-ge v0, v1, :cond_1

    const-string v1, "*"

    return-object v1

    .line 363
    :cond_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    const-string v1, "**"

    return-object v1

    .line 364
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 360
    .end local v0
    :cond_3
    :goto_0
    const-string v0, "*"

    return-object v0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationAppListSettings$Backend;)Lcom/android/settings/notification/NotificationAppListSettings$AppRow;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationAppListSettings$Backend;

    .line 570
    new-instance v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;-><init>()V

    .line 571
    .local v0, "row":Lcom/android/settings/notification/NotificationAppListSettings$AppRow;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    .line 572
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->uid:I

    .line 574
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->label:Ljava/lang/CharSequence;

    .line 578
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->label:Ljava/lang/CharSequence;

    .line 579
    .end local v1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 580
    iget-object v1, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    iget v2, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->uid:I

    invoke-virtual {p2, v1, v2}, Lcom/android/settings/notification/NotificationAppListSettings$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->banned:Z

    .line 583
    return-object v0
.end method

.method private loadAppsList()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/notification/NotificationAppListSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAppListSettings$5;-><init>(Lcom/android/settings/notification/NotificationAppListSettings;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 587
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppListSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/notification/NotificationAppListSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    sget-object v0, Lcom/android/settings/notification/NotificationAppListSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 593
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 8

    .line 729
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppListSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Refreshing apps..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mAdapter:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->clear()V

    .line 731
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v0

    .line 732
    const/4 v1, 0x0

    .line 733
    .local v1, "section":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 734
    .local v2, "N":I
    const/4 v3, 0x1

    .line 735
    .local v3, "first":Z
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "first":Z
    :goto_0
    if-ge v3, v2, :cond_2

    .line 736
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    .line 747
    .local v6, "row":Lcom/android/settings/notification/NotificationAppListSettings$AppRow;
    iget-object v7, v6, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 754
    iput-boolean v5, v6, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->first:Z

    .line 755
    iget-object v7, v6, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/notification/NotificationAppListSettings;->filterPkg(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 756
    iget-object v7, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mAdapter:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 758
    :cond_1
    const/4 v5, 0x0

    .line 735
    .end local v6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    .end local v1
    .end local v2
    .end local v3
    .end local v5
    :cond_2
    monitor-exit v0

    .line 761
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mListViewState:Landroid/os/Parcelable;

    if-eqz v0, :cond_4

    .line 762
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppListSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "NotificationAppList"

    const-string v1, "Restoring listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mListViewState:Landroid/os/Parcelable;

    .line 766
    :cond_4
    invoke-direct {p0, v4, v4}, Lcom/android/settings/notification/NotificationAppListSettings;->updateAllAllowApp(ZZ)V

    .line 767
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppListSettings;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "NotificationAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayed items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_5
    return-void

    .line 760
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateAllAllowApp(ZZ)V
    .locals 7
    .param p1, "isSeted"    # Z
    .param p2, "setBlocked"    # Z

    .line 307
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mAdapter:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mAdapter:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->getCount()I

    move-result v0

    .line 309
    .local v0, "count":I
    const/4 v1, 0x0

    .line 310
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-le v0, v2, :cond_2

    .line 311
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mAdapter:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    .line 312
    .local v3, "appRow":Lcom/android/settings/notification/NotificationAppListSettings$AppRow;
    if-eqz p1, :cond_0

    .line 313
    iget-boolean v4, v3, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->banned:Z

    if-eq p2, v4, :cond_0

    .line 314
    iget-object v4, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mBackend:Lcom/android/settings/notification/NotificationAppListSettings$Backend;

    iget-object v5, v3, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    iget v6, v3, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->uid:I

    invoke-virtual {v4, v5, v6, p2}, Lcom/android/settings/notification/NotificationAppListSettings$Backend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 315
    iput-boolean p2, v3, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->banned:Z

    .line 318
    :cond_0
    iget-boolean v4, v3, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->banned:Z

    if-nez v4, :cond_1

    .line 319
    add-int/lit8 v1, v1, 0x1

    .line 310
    .end local v3
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v2
    :cond_2
    iput v1, p0, Lcom/android/settings/notification/NotificationAppListSettings;->canNotificationNum:I

    .line 323
    iget v2, p0, Lcom/android/settings/notification/NotificationAppListSettings;->canNotificationNum:I

    invoke-direct {p0, v2}, Lcom/android/settings/notification/NotificationAppListSettings;->updateAllAllowView(I)V

    .line 324
    if-eqz p1, :cond_3

    .line 325
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mAdapter:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    invoke-virtual {v2}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->notifyDataSetChanged()V

    .line 328
    .end local v0
    .end local v1
    :cond_3
    return-void
.end method

.method private updateAllAllowTitle(I)V
    .locals 3
    .param p1, "num"    # I

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    .local v0, "allAllow":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f120e86

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v2, 0x7f120e87

    .line 344
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .end local v0
    :cond_0
    return-void
.end method

.method private updateAllAllowView(I)V
    .locals 2
    .param p1, "num"    # I

    .line 331
    if-nez p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->allBockedSiwtch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->allBockedSiwtch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 336
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAppListSettings;->updateAllAllowTitle(I)V

    .line 337
    return-void
.end method


# virtual methods
.method public hideSoftKeyboard()V
    .locals 4

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 233
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 235
    .end local v1
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 259
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mAdapter:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mContext:Landroid/content/Context;

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    new-instance v0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;-><init>(Lcom/android/settings/notification/NotificationAppListSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mAdapter:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mUM:Landroid/os/UserManager;

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 151
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 156
    const/4 v0, 0x0

    const v1, 0x7f0d00fd

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "view":Landroid/view/View;
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 162
    :cond_0
    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings;->btn_clean_search:Landroid/widget/Button;

    .line 163
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings;->btn_clean_search:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings;->btn_clean_search:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    const v0, 0x7f0a00a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->btn_start_search:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->btn_start_search:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f0a0159

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->edit_search_text:Landroid/widget/EditText;

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->edit_search_text:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/notification/NotificationAppListSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/NotificationAppListSettings$1;-><init>(Lcom/android/settings/notification/NotificationAppListSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->edit_search_text:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/custom/EditFilterName;

    new-instance v3, Lcom/android/settings/notification/NotificationAppListSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/NotificationAppListSettings$2;-><init>(Lcom/android/settings/notification/NotificationAppListSettings;)V

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAppListSettings;->edit_search_text:Landroid/widget/EditText;

    invoke-direct {v2, v3, v4}, Lcom/android/settings/custom/EditFilterName;-><init>(Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    const v0, 0x1020004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mEmptyView_:Landroid/widget/TextView;

    .line 187
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .line 274
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onDestroyView()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mListViewState:Landroid/os/Parcelable;

    .line 276
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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

    .line 296
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
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

    .line 300
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 266
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onPause()V

    .line 267
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 268
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppListSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mListViewState:Landroid/os/Parcelable;

    .line 270
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 280
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onResume()V

    .line 281
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->loadAppsList()V

    .line 282
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 239
    invoke-super {p0, p1, p2}, Lcom/android/settings/PinnedHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mUM:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    .line 241
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSpinner:Landroid/widget/Spinner;

    .line 244
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAppListSettings;->setPinnedHeaderView(Landroid/view/View;)V

    .line 248
    :cond_0
    const v0, 0x7f0a0049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings;->allBockedSiwtch:Landroid/widget/Switch;

    .line 249
    const v0, 0x7f0a004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/NotificationAppListSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAppListSettings$4;-><init>(Lcom/android/settings/notification/NotificationAppListSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method
