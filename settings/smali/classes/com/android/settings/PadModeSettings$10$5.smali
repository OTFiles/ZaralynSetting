.class Lcom/android/settings/PadModeSettings$10$5;
.super Ljava/lang/Object;
.source "PadModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 1301
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$10$5;->this$1:Lcom/android/settings/PadModeSettings$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 1304
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10$5;->this$1:Lcom/android/settings/PadModeSettings$10;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/PadModeSettings;->access$702(Lcom/android/settings/PadModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1305
    return-void
.end method
