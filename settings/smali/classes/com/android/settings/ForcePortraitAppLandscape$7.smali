.class Lcom/android/settings/ForcePortraitAppLandscape$7;
.super Ljava/lang/Object;
.source "ForcePortraitAppLandscape.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ForcePortraitAppLandscape;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ForcePortraitAppLandscape;


# direct methods
.method constructor <init>(Lcom/android/settings/ForcePortraitAppLandscape;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 436
    iput-object p1, p0, Lcom/android/settings/ForcePortraitAppLandscape$7;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$7;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$800(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$7;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$100(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$7;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ForcePortraitAppLandscape$7;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v1}, Lcom/android/settings/ForcePortraitAppLandscape;->access$800(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->updateNowNbStoredHistoryFilter(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$7;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->onlyUpdateAdapterNbDuibiItemStatus()V

    .line 443
    return-void
.end method
