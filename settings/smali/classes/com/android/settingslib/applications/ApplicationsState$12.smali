.class Lcom/android/settingslib/applications/ApplicationsState$12;
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

    .line 1850
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1858
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1859
    return v1

    .line 1860
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1861
    return v2

    .line 1862
    :cond_1
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1863
    return v2

    .line 1864
    :cond_2
    iget-boolean v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    if-eqz v0, :cond_3

    .line 1865
    return v2

    .line 1866
    :cond_3
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    if-eqz v0, :cond_4

    .line 1867
    return v2

    .line 1869
    :cond_4
    return v1
.end method

.method public init()V
    .locals 0

    .line 1854
    return-void
.end method
