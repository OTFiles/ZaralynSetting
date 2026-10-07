.class public Lcom/android/settings/enterprise/BackupsEnabledPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BackupsEnabledPreferenceController.java"


# static fields
.field private static final KEY_BACKUPS_ENABLED:Ljava/lang/String; = "backups_enabled"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const-string v0, "backups_enabled"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/BackupsEnabledPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 30
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/settings/enterprise/BackupsEnabledPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->areBackupsMandatory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method
