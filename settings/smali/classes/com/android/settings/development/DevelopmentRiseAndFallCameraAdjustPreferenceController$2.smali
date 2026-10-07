.class Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;
.super Ljava/lang/Object;
.source "DevelopmentRiseAndFallCameraAdjustPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->refreshRbciRiseFallCameraStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

.field final synthetic val$iResId:I


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    .line 334
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iput p2, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->val$iResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciRiseFallCameraPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    .line 339
    iget v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->val$iResId:I

    if-lez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciRiseFallCameraPref:Landroid/support/v7/preference/Preference;

    iget v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->val$iResId:I

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 342
    :cond_0
    const/4 v0, -0x1

    .line 344
    .local v0, "cal":I
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v1, v1, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v2, v2, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    const-string v3, "cameraIsCalibration"

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->callMethodVoidParam(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 350
    :cond_1
    :goto_0
    goto :goto_1

    .line 349
    :catch_0
    move-exception v1

    goto :goto_1

    .line 348
    :catch_1
    move-exception v1

    goto :goto_0

    .line 351
    :goto_1
    :try_start_2
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====divhee============refreshRbciRiseFallCameraStatus===cameraIsCalibration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$2;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v1, v1, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciRiseFallCameraPref:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_2

    const v2, 0x7f120b92

    goto :goto_2

    :cond_2
    const v2, 0x7f120b93

    :goto_2
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 356
    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    goto :goto_4

    .line 355
    :catch_2
    move-exception v0

    .line 357
    :goto_4
    return-void
.end method
