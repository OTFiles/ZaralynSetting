.class public final synthetic Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$8oa0oEjJK2SZdXqZGB2HrMlBk_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;

.field private final synthetic f$1:Landroid/support/v7/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$8oa0oEjJK2SZdXqZGB2HrMlBk_0;->f$0:Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;

    iput-object p2, p0, Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$8oa0oEjJK2SZdXqZGB2HrMlBk_0;->f$1:Landroid/support/v7/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onNumberOfAppsResult(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$8oa0oEjJK2SZdXqZGB2HrMlBk_0;->f$0:Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;

    iget-object v1, p0, Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$8oa0oEjJK2SZdXqZGB2HrMlBk_0;->f$1:Landroid/support/v7/preference/Preference;

    invoke-static {v0, v1, p1}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->lambda$updateState$0(Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;Landroid/support/v7/preference/Preference;I)V

    return-void
.end method
