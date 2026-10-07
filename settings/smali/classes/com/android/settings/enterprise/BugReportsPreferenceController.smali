.class public Lcom/android/settings/enterprise/BugReportsPreferenceController;
.super Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;
.source "BugReportsPreferenceController.java"


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
    iget-object v0, p0, Lcom/android/settings/enterprise/BugReportsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getLastBugReportRequestTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "bug_reports"

    return-object v0
.end method
