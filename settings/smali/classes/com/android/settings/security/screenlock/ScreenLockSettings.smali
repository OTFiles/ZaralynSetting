.class public Lcom/android/settings/security/screenlock/ScreenLockSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ScreenLockSettings.java"

# interfaces
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    .line 88
    new-instance v0, Lcom/android/settings/security/screenlock/ScreenLockSettings$1;

    invoke-direct {v0}, Lcom/android/settings/security/screenlock/ScreenLockSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/app/Fragment;
    .param p2, "x2"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "x3"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/app/Fragment;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;

    sget v2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-direct {v1, p0, v2, p3}, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;

    sget v2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-direct {v1, p0, v2, p3}, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;

    sget v2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-direct {v1, p0, v2, p3}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "ScreenLockSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 49
    const/16 v0, 0x4f1

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 54
    const v0, 0x7f150095

    return v0
.end method

.method public onOwnerInfoUpdated()V
    .locals 1

    .line 71
    const-class v0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    .line 72
    return-void
.end method
