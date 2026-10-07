.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$4;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    .line 653
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 656
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$600(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)[I

    move-result-object v0

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 657
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$600(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)[I

    move-result-object v0

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 659
    return-void
.end method
