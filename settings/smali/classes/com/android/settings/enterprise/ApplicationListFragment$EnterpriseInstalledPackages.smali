.class public Lcom/android/settings/enterprise/ApplicationListFragment$EnterpriseInstalledPackages;
.super Lcom/android/settings/enterprise/ApplicationListFragment;
.source "ApplicationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/ApplicationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnterpriseInstalledPackages"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/enterprise/ApplicationListFragment;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public buildApplicationList(Landroid/content/Context;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .line 111
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v0

    .line 112
    invoke-interface {v0, p2}, Lcom/android/settings/applications/ApplicationFeatureProvider;->listPolicyInstalledApps(Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    .line 113
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 105
    const/16 v0, 0x3aa

    return v0
.end method
