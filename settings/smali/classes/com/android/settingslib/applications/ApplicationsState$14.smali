.class Lcom/android/settingslib/applications/ApplicationsState$14;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1889
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1896
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1897
    return v1

    .line 1898
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1899
    return v1

    .line 1901
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 0

    .line 1892
    return-void
.end method
