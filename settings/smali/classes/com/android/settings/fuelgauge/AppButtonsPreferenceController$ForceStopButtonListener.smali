.class Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;
.super Ljava/lang/Object;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceStopButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;
    .param p2, "x1"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;

    .line 250
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1500(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$900(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 257
    invoke-static {v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1500(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;I)V

    .line 261
    :goto_0
    return-void
.end method
