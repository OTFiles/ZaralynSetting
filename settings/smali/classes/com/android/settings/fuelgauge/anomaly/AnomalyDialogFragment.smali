.class public Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AnomalyDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;
    }
.end annotation


# instance fields
.field mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

.field mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;
    .locals 3
    .param p0, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .param p1, "metricsKey"    # I

    .line 60
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;-><init>()V

    .line 62
    .local v0, "dialogFragment":Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 63
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "anomaly"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v2, "metrics_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 83
    const/16 v0, 0x3dc

    return v0
.end method

.method initAnomalyUtils()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 79
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;

    .line 89
    .local v0, "lsn":Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;
    if-nez v0, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v1

    .line 94
    .local v1, "anomalyAction":Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "metrics_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 96
    .local v2, "metricsKey":I
    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 97
    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-interface {v0, v3}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;->onAnomalyHandled(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->initAnomalyUtils()V

    .line 74
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 104
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v2

    .line 106
    .local v2, "anomalyUtils":Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;
    const-string v3, "anomaly"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 107
    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    const/16 v5, 0x3dc

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->logAnomaly(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 110
    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v3

    .line 111
    .local v3, "anomalyAction":Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->getActionType()I

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f12055d

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    packed-switch v4, :pswitch_data_0

    .line 138
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v6, v6, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :pswitch_0    # 0x3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f12052b

    .line 123
    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x7f120529

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v10, v10, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v10, v8, v7

    .line 124
    invoke-virtual {p0, v9, v8}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f12052a

    .line 126
    invoke-virtual {v4, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 127
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 122
    return-object v4

    .line 130
    :pswitch_1    # 0x2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f12052e

    .line 131
    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x7f12052c

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v10, v10, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v10, v8, v7

    .line 132
    invoke-virtual {p0, v9, v8}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f12052d

    .line 134
    invoke-virtual {v4, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 135
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 136
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 130
    return-object v4

    .line 113
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f120532

    .line 114
    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 115
    iget-object v9, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v9, v9, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    if-nez v9, :cond_1

    .line 116
    const v9, 0x7f12052f

    goto :goto_0

    .line 117
    :cond_1
    const v9, 0x7f120530

    :goto_0
    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v10, v10, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v10, v8, v7

    .line 115
    invoke-virtual {p0, v9, v8}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f120531

    .line 118
    invoke-virtual {v4, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 119
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 113
    return-object v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method
