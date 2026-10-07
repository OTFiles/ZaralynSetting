.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    .line 820
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 823
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->checkUserSettingsShutDownEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->ChargingPowerOffPadEnableChangeEvent(Z)V

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$102(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;I)I

    .line 828
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->checkUserSettingsShutDownEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->ChargingPowerOffPadEnableChangeEvent(Z)V

    .line 833
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
