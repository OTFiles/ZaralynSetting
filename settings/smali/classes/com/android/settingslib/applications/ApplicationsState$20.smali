.class Lcom/android/settingslib/applications/ApplicationsState$20;
.super Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHidePackageNames:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1961
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1976
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$20;->mHidePackageNames:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1977
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1978
    return v1

    .line 1979
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1981
    return v1

    .line 1985
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 0

    .line 1972
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1966
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1967
    const v1, 0x107002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$20;->mHidePackageNames:[Ljava/lang/String;

    .line 1968
    return-void
.end method
