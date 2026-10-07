.class Lcom/android/settings/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsActivity;

    .line 675
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$200(Lcom/android/settings/SettingsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0a024a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 679
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->access$200(Lcom/android/settings/SettingsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 685
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setResult(I)V

    .line 686
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 687
    const/4 v0, -0x1

    .line 688
    .local v0, "bIsReverseAnim":I
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isReverseAnim"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isReverseAnim"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move v0, v2

    .line 691
    :cond_1
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===2==divhee=====skip===isReverseAnim===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    if-ne v0, v1, :cond_2

    .line 693
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    const v2, 0x7f01001e

    const v3, 0x7f01001f

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/SettingsActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 694
    :cond_2
    if-nez v0, :cond_3

    .line 695
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    const v2, 0x7f01001d

    const v3, 0x7f010020

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/SettingsActivity;->overridePendingTransition(II)V

    .line 697
    .end local v0
    :cond_3
    :goto_0
    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 699
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b4f

    .line 701
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120b50

    .line 702
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120b4d

    new-instance v3, Lcom/android/settings/SettingsActivity$3$2;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$3$2;-><init>(Lcom/android/settings/SettingsActivity$3;)V

    .line 703
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120b4e

    new-instance v3, Lcom/android/settings/SettingsActivity$3$1;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$3$1;-><init>(Lcom/android/settings/SettingsActivity$3;)V

    .line 713
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 719
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 735
    .local v0, "alertDlg":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 743
    .end local v0
    :cond_5
    :goto_1
    return-void
.end method
