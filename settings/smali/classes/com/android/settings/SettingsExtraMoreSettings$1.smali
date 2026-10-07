.class Lcom/android/settings/SettingsExtraMoreSettings$1;
.super Ljava/lang/Object;
.source "SettingsExtraMoreSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsExtraMoreSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsExtraMoreSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsExtraMoreSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 427
    iput-object p1, p0, Lcom/android/settings/SettingsExtraMoreSettings$1;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 430
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$1;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 431
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings$1;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "readboy_quick_printer_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/settings/SettingsExtraMoreSettings;->btQuickPrinterSetChecked(Z)V

    .line 434
    :cond_1
    return-void
.end method
