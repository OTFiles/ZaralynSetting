.class Lcom/android/settingslib/applications/ApplicationsState$7;
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

    .line 1591
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1598
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1599
    return v1

    .line 1600
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1601
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ApplicationsState$7;->nowFilterAppByKey(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1602
    return v1

    .line 1604
    :cond_1
    return v2

    .line 1605
    :cond_2
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    .line 1606
    invoke-static {v0, v3}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1607
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ApplicationsState$7;->nowFilterAppByKey(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1608
    return v1

    .line 1610
    :cond_3
    return v2

    .line 1612
    :cond_4
    return v1
.end method

.method public init()V
    .locals 0

    .line 1594
    return-void
.end method
