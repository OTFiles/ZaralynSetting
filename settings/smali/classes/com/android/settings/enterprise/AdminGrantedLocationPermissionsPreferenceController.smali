.class public Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;
.super Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;
.source "AdminGrantedLocationPermissionsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "async"    # Z

    .line 27
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "enterprise_privacy_number_location_access_packages"

    return-object v0
.end method
