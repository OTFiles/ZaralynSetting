.class public Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultSmsPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;
    }
.end annotation


# instance fields
.field private mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, "context":Landroid/content/Context;
    nop

    .line 53
    invoke-static {v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v1

    .line 54
    .local v1, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/DefaultAppInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 58
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :try_start_0
    new-instance v5, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v8, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mUserId:I

    .line 59
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    .line 58
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v5

    .line 63
    .end local v4
    :goto_1
    goto :goto_0

    .line 65
    :cond_0
    return-object v2
.end method

.method protected bridge synthetic getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Lcom/android/settingslib/widget/CandidateInfo;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageDirectBootAware(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120533

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;->getDefaultApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 41
    const/16 v0, 0x315

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 46
    const v0, 0x7f150042

    return v0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;->setDefaultApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
