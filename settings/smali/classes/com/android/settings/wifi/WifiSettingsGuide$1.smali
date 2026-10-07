.class Lcom/android/settings/wifi/WifiSettingsGuide$1;
.super Ljava/lang/Object;
.source "WifiSettingsGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettingsGuide;
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

    .line 338
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$000(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$100(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 343
    .local v0, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$100(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 344
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$200(Lcom/android/settings/wifi/WifiSettingsGuide;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 346
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$500(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$100(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$300(Lcom/android/settings/wifi/WifiSettingsGuide;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$400(Lcom/android/settings/wifi/WifiSettingsGuide;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const/4 v2, 0x2

    .line 349
    .local v2, "mNumSlots":I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettingsGuide;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettingsGuide;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    .line 350
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettingsGuide;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 352
    :cond_1
    const/4 v3, 0x0

    move v4, v3

    .local v4, "inum":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 353
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$000(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 354
    if-eqz v0, :cond_2

    .line 353
    move v7, v1

    goto :goto_2

    .line 354
    :cond_2
    nop

    .line 353
    move v7, v3

    :goto_2
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 356
    .end local v4
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$000(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_data"

    .line 357
    if-eqz v0, :cond_4

    goto :goto_3

    .line 356
    :cond_4
    move v1, v3

    :goto_3
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    .end local v0
    .end local v2
    :cond_5
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====divhee========mDataSwitchPreference===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->access$100(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method
