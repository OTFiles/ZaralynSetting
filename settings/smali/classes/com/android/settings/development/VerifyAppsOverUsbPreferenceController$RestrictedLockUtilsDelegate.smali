.class Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;
.super Ljava/lang/Object;
.source "VerifyAppsOverUsbPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictedLockUtilsDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    .line 56
    iput-object p1, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;->this$0:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userRestriction"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 59
    invoke-static {p1, p2, p3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method
