.class public Lcom/android/settings/enterprise/NetworkLogsPreferenceController;
.super Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;
.source "NetworkLogsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getAdminActionTimestamp()Ljava/util/Date;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getLastNetworkLogRetrievalTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "network_logs"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isNetworkLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 36
    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getLastNetworkLogRetrievalTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0
.end method
