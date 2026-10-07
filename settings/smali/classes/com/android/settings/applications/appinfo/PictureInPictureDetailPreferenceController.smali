.class public Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "PictureInPictureDetailPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PicInPicDetailControl"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 40
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->hasPictureInPictureActivites()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 54
    const-class v0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;

    return-object v0
.end method

.method getPreferenceSummary()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 77
    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->mPackageName:Ljava/lang/String;

    .line 76
    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method hasPictureInPictureActivites()Z
    .locals 6

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "packageInfoWithActivities":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->mPackageName:Ljava/lang/String;

    .line 63
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 62
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PicInPicDetailControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while retrieving the package info of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v2
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 69
    invoke-static {v2, v3}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 68
    :goto_1
    return v1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->mPackageName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->getPreferenceSummary()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 50
    return-void
.end method
