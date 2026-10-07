.class public Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppFilterByKey"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mKeyWords:Ljava/lang/String;

.field public mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1709
    invoke-static {}, Lcom/android/settingslib/applications/ApplicationsState;->getApplicationByReflex()Landroid/app/Application;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1710
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyWords"    # Ljava/lang/String;

    .line 1712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1713
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mContext:Landroid/content/Context;

    .line 1714
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    .line 1715
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    .line 1718
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mPM:Landroid/content/pm/PackageManager;

    .line 1719
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1701
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init()V
    .locals 0

    .line 1695
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 1698
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->init()V

    .line 1699
    return-void
.end method

.method public nowApkExist(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1786
    const/4 v0, 0x0

    .line 1787
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 1789
    .local v1, "versionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mPM:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v0, v3

    .line 1790
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 1797
    nop

    .line 1798
    const-string v2, "isApkExist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isApkExist = true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    return v4

    .line 1794
    :catch_0
    move-exception v3

    .line 1795
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1796
    return v2

    .line 1791
    .end local v3
    :catch_1
    move-exception v3

    .line 1792
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "isApkExist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isApkExist not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    return v2
.end method

.method public nowFilterAppByKey(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 1734
    if-nez p1, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1738
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1739
    const/4 v0, 0x0

    return v0

    .line 1743
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public resetFilterKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyWords"    # Ljava/lang/String;

    .line 1722
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    .line 1723
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->mKeyWords:Ljava/lang/String;

    .line 1726
    :cond_0
    return-void
.end method
