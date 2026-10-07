.class public Lcom/android/settings/applications/ProcessStatsPreference;
.super Lcom/android/settings/widget/AppPreference;
.source "ProcessStatsPreference.java"


# instance fields
.field private mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getEntry()Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;

    return-object v0
.end method

.method public init(Lcom/android/settings/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V
    .locals 13
    .param p1, "entry"    # Lcom/android/settings/applications/ProcStatsPackageEntry;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "maxMemory"    # D
    .param p5, "weightToRam"    # D
    .param p7, "totalScale"    # D
    .param p9, "avg"    # Z

    move-object v0, p0

    move-object v1, p1

    .line 38
    iput-object v1, v0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 39
    iget-object v2, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    .line 40
    .local v2, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    const-string v3, "ProcessStatsPreference"

    const-string v4, "PackageEntry contained no package name or uiLabel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    .line 45
    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object v4, p2

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 47
    :cond_2
    move-object v4, p2

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :goto_1
    iget-wide v5, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v7, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    cmpl-double v3, v5, v7

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 50
    .local v3, "statsForeground":Z
    :goto_2
    if-eqz p9, :cond_5

    if-eqz v3, :cond_4

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    goto :goto_3

    :cond_4
    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    :goto_3
    mul-double v6, v6, p5

    goto :goto_5

    .line 51
    :cond_5
    if-eqz v3, :cond_6

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    goto :goto_4

    :cond_6
    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    :goto_4
    long-to-double v6, v6

    mul-double v6, v6, p7

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    mul-double/2addr v6, v9

    .line 52
    .local v6, "amount":D
    :goto_5
    invoke-virtual {v0}, Lcom/android/settings/applications/ProcessStatsPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    double-to-long v10, v6

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/settings/applications/ProcessStatsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v9, v6

    div-double v9, v9, p3

    double-to-int v9, v9

    invoke-virtual {v0, v9}, Lcom/android/settings/applications/ProcessStatsPreference;->setProgress(I)V

    .line 54
    return-void
.end method
