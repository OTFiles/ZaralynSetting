.class Lcom/android/settings/PadModeSettings$10$3;
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

    .line 1232
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$10$3;->this$1:Lcom/android/settings/PadModeSettings$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1235
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1236
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10$3;->this$1:Lcom/android/settings/PadModeSettings$10;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1237
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10$3;->this$1:Lcom/android/settings/PadModeSettings$10;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1238
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10$3;->this$1:Lcom/android/settings/PadModeSettings$10;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1239
    return-void
.end method
