.class Lcom/android/settings/wifi/WifiSettingsGuide$2;
.super Ljava/lang/Object;
.source "WifiSettingsGuide.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettingsGuide;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsGuide;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSettingsGuide;

    .line 383
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsGuide$2;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 389
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide$2;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 390
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 391
    const v1, 0x7f1210c2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 395
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 386
    return-void
.end method
