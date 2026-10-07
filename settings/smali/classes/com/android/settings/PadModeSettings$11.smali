.class Lcom/android/settings/PadModeSettings$11;
.super Ljava/lang/Object;
.source "PadModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PadModeSettings;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PadModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PadModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/PadModeSettings;

    .line 1586
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$11;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1589
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$11;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$600(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PadModeSettings$11;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v1}, Lcom/android/settings/PadModeSettings;->access$1200(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/custom/CustomProgressBar;->setOnProgressBarListener(Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;)V

    .line 1590
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$11;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$600(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/custom/CustomProgressBar;->setProcess(F)V

    .line 1591
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$11;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$600(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/custom/CustomProgressBar;->setVisibility(I)V

    .line 1592
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$11;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$600(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/custom/CustomProgressBar;->start()V

    .line 1593
    return-void
.end method
