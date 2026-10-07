.class public Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionLocation;
.super Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;
.source "ApplicationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/ApplicationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdminGrantedPermissionLocation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;-><init>([Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public bridge synthetic buildApplicationList(Landroid/content/Context;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;->buildApplicationList(Landroid/content/Context;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    return-void
.end method

.method public bridge synthetic getMetricsCategory()I
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;->getMetricsCategory()I

    move-result v0

    return v0
.end method
