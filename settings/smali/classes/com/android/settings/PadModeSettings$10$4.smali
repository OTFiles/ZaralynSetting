.class Lcom/android/settings/PadModeSettings$10$4;
.super Ljava/lang/Object;
.source "PadModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PadModeSettings$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/PadModeSettings$10;


# direct methods
.method constructor <init>(Lcom/android/settings/PadModeSettings$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/PadModeSettings$10;

    .line 1222
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$10$4;->this$1:Lcom/android/settings/PadModeSettings$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1225
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1226
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10$4;->this$1:Lcom/android/settings/PadModeSettings$10;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$400(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PadModeSettings$10$4;->this$1:Lcom/android/settings/PadModeSettings$10;

    iget-object v1, v1, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v1}, Lcom/android/settings/PadModeSettings;->access$800(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/custom/CustomProgressBar;->setOnProgressBarListener(Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;)V

    .line 1227
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10$4;->this$1:Lcom/android/settings/PadModeSettings$10;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$400(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/custom/CustomProgressBar;->setProcess(F)V

    .line 1228
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10$4;->this$1:Lcom/android/settings/PadModeSettings$10;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$400(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/custom/CustomProgressBar;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10$4;->this$1:Lcom/android/settings/PadModeSettings$10;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$400(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/custom/CustomProgressBar;->start()V

    .line 1230
    return-void
.end method
