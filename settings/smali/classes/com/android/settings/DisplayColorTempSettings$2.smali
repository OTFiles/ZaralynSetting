.class Lcom/android/settings/DisplayColorTempSettings$2;
.super Ljava/lang/Object;
.source "DisplayColorTempSettings.java"

# interfaces
.implements Lcom/android/settings/CMSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplayColorTempSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplayColorTempSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplayColorTempSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 159
    iput-object p1, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCMValueChanged(I)V
    .locals 6
    .param p1, "progress"    # I

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v0}, Lcom/android/settings/DisplayColorTempSettings;->access$100(Lcom/android/settings/DisplayColorTempSettings;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/DisplayColorTempSettings;->getNowColorTempValue(I)I

    move-result v0

    .line 165
    .local v0, "newsetColorTempValue":I
    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v1}, Lcom/android/settings/DisplayColorTempSettings;->access$200(Lcom/android/settings/DisplayColorTempSettings;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 166
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, -0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=====divhee=====mCMSeekBar_Callback===("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v3}, Lcom/android/settings/DisplayColorTempSettings;->access$200(Lcom/android/settings/DisplayColorTempSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-virtual {v3}, Lcom/android/settings/DisplayColorTempSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_manager_temp_value"

    const/16 v5, 0x168

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v1, v0}, Lcom/android/settings/DisplayColorTempSettings;->access$202(Lcom/android/settings/DisplayColorTempSettings;I)I

    .line 169
    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v1}, Lcom/android/settings/DisplayColorTempSettings;->access$100(Lcom/android/settings/DisplayColorTempSettings;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v2}, Lcom/android/settings/DisplayColorTempSettings;->access$200(Lcom/android/settings/DisplayColorTempSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 173
    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-virtual {v1}, Lcom/android/settings/DisplayColorTempSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_manager_temp_value"

    iget-object v3, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v3}, Lcom/android/settings/DisplayColorTempSettings;->access$200(Lcom/android/settings/DisplayColorTempSettings;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    .end local v0
    :goto_0
    return-void
.end method

.method public onColorManagerReset()V
    .locals 5

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v0}, Lcom/android/settings/DisplayColorTempSettings;->access$100(Lcom/android/settings/DisplayColorTempSettings;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v1}, Lcom/android/settings/DisplayColorTempSettings;->access$300(Lcom/android/settings/DisplayColorTempSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/DisplayColorTempSettings;->access$202(Lcom/android/settings/DisplayColorTempSettings;I)I

    .line 185
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-virtual {v0}, Lcom/android/settings/DisplayColorTempSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_manager_temp_value"

    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v2}, Lcom/android/settings/DisplayColorTempSettings;->access$200(Lcom/android/settings/DisplayColorTempSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v0}, Lcom/android/settings/DisplayColorTempSettings;->access$400(Lcom/android/settings/DisplayColorTempSettings;)Lcom/android/settings/CMSeekBarPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-virtual {v1}, Lcom/android/settings/DisplayColorTempSettings;->getNowSeekBarPostion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/CMSeekBarPreference;->setProgress(I)V

    .line 187
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===2==divhee===("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v2}, Lcom/android/settings/DisplayColorTempSettings;->access$200(Lcom/android/settings/DisplayColorTempSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-virtual {v2}, Lcom/android/settings/DisplayColorTempSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_manager_temp_value"

    const/16 v4, 0x168

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v0}, Lcom/android/settings/DisplayColorTempSettings;->access$100(Lcom/android/settings/DisplayColorTempSettings;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings$2;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v1}, Lcom/android/settings/DisplayColorTempSettings;->access$200(Lcom/android/settings/DisplayColorTempSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 192
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v0
    :goto_0
    return-void
.end method
