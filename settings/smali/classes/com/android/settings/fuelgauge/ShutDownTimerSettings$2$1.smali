.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2$1;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;->propertyChange(Ljava/beans/PropertyChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;

    .line 450
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2$1;->this$1:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2$1;->this$1:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->updateAtTimeTurnOffPad()V

    .line 454
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2$1;->this$1:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->updateDelayTimeTurnOffPad()V

    .line 455
    return-void
.end method
