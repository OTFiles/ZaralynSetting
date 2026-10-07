.class Lcom/android/settings/fuelgauge/BatterySaverController$1;
.super Landroid/database/ContentObserver;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySaverController;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/BatterySaverController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverController$1;->this$0:Lcom/android/settings/fuelgauge/BatterySaverController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController$1;->this$0:Lcom/android/settings/fuelgauge/BatterySaverController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatterySaverController;->access$000(Lcom/android/settings/fuelgauge/BatterySaverController;)V

    .line 113
    return-void
.end method
