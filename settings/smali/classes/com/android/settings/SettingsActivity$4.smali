.class Lcom/android/settings/SettingsActivity$4;
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

    .line 746
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$300(Lcom/android/settings/SettingsActivity;)Landroid/widget/Button;

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

    .line 750
    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->access$300(Lcom/android/settings/SettingsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 754
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v0

    .line 758
    .local v0, "networkType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 759
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const v3, 0x7f120b38

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 761
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v3, Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 762
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->GuideScreenNextEventAction()V

    goto :goto_0

    .line 763
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v3, Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 764
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->guideExitResetSystemFlags(Landroid/content/Context;)V

    .line 766
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->setResult(I)V

    .line 767
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 769
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v4, Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 770
    const/4 v2, -0x1

    .line 771
    .local v2, "bIsReverseAnim":I
    iget-object v4, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isReverseAnim"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 772
    iget-object v4, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isReverseAnim"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move v2, v3

    .line 774
    :cond_4
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===2==divhee====next====isReverseAnim===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    if-ne v2, v1, :cond_5

    .line 776
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f01001e

    const v4, 0x7f01001f

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/SettingsActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 777
    :cond_5
    if-nez v2, :cond_6

    .line 778
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f01001d

    const v4, 0x7f010020

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/SettingsActivity;->overridePendingTransition(II)V

    .line 782
    .end local v2
    :cond_6
    :goto_1
    return-void
.end method
