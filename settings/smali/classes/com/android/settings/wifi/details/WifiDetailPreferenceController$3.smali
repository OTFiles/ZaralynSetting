.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 585
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 592
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$900(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 593
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 594
    const v1, 0x7f1210c4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 596
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 598
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 588
    return-void
.end method
