.class Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;
.super Ljava/lang/Object;
.source "SettingsExtraMoreSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    .line 614
    iput-object p1, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->updateSteelFilmStatus()V

    .line 620
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 621
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->access$300(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->access$300(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 625
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->access$400(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/app/Dialog;

    move-result-object v0

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_2

    .line 627
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->access$400(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 629
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 628
    :catch_1
    move-exception v0

    .line 630
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->access$402(Lcom/android/settings/SettingsExtraMoreSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 631
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->access$500(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/widget/ImageView;

    move-result-object v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_2

    .line 633
    :try_start_4
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->access$500(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->access$500(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 637
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    goto :goto_2

    .line 636
    :catch_2
    move-exception v0

    .line 638
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;->this$1:Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v0, v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->access$502(Lcom/android/settings/SettingsExtraMoreSettings;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 642
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    goto :goto_3

    .line 641
    :catch_3
    move-exception v0

    .line 643
    :goto_3
    return-void
.end method
