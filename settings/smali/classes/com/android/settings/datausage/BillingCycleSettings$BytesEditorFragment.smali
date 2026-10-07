.class public Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private formatText(F)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # F

    .line 292
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 293
    .end local p1
    .local v1, "v":F
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 11
    .param p1, "bytesPicker"    # Landroid/widget/EditText;
    .param p2, "type"    # Landroid/widget/Spinner;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageEditController;

    .line 268
    .local v0, "target":Lcom/android/settings/datausage/DataUsageEditController;
    invoke-interface {v0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v1

    .line 270
    .local v1, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 271
    .local v2, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "limit"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 272
    .local v3, "isLimit":Z
    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    .line 274
    .local v4, "bytes":J
    :goto_0
    const-wide/16 v6, -0x1

    .line 276
    .local v6, "limitDisabled":J
    long-to-float v8, v4

    const/high16 v9, 0x4ec00000    # 1.6106127E9f

    cmpl-float v8, v8, v9

    const/4 v9, 0x0

    if-lez v8, :cond_1

    .line 277
    long-to-float v8, v4

    const/high16 v10, 0x4e800000    # 1.0737418E9f

    div-float/2addr v8, v10

    invoke-direct {p0, v8}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "bytesText":Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/widget/EditText;->setSelection(II)V

    .line 281
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 282
    .end local v8
    goto :goto_1

    .line 283
    :cond_1
    long-to-float v8, v4

    const/high16 v10, 0x49800000    # 1048576.0f

    div-float/2addr v8, v10

    invoke-direct {p0, v8}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v8

    .line 284
    .restart local v8
    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/widget/EditText;->setSelection(II)V

    .line 287
    invoke-virtual {p2, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 289
    .end local v8
    :goto_1
    return-void
.end method

.method public static show(Lcom/android/settings/datausage/DataUsageEditController;Z)V
    .locals 5
    .param p0, "parent"    # Lcom/android/settings/datausage/DataUsageEditController;
    .param p1, "isLimit"    # Z

    .line 232
    instance-of v0, p0, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Fragment;

    .line 236
    .local v0, "targetFragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    return-void

    .line 240
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "template"

    invoke-interface {p0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 242
    const-string v2, "limit"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    new-instance v2, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    .line 245
    .local v2, "dialog":Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    invoke-virtual {v2, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 246
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 247
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "warningEditor"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 248
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 328
    const/16 v0, 0x226

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 298
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageEditController;

    .line 302
    .local v0, "target":Lcom/android/settings/datausage/DataUsageEditController;
    invoke-interface {v0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v1

    .line 304
    .local v1, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 305
    .local v2, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "limit"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 306
    .local v3, "isLimit":Z
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v5, 0x7f0a00bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 307
    .local v4, "bytesField":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v6, 0x7f0a03dd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 309
    .local v5, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "bytesString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 311
    :cond_1
    const-string v6, "0"

    .line 313
    :cond_2
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 314
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-nez v8, :cond_3

    const-wide/32 v8, 0x100000

    goto :goto_0

    :cond_3
    const-wide/32 v8, 0x40000000    # 2.0f

    :goto_0
    long-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-long v7, v7

    .line 317
    .local v7, "bytes":J
    const-wide v9, 0x30d400000000L

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 318
    .local v9, "correctedBytes":J
    if-eqz v3, :cond_4

    .line 319
    invoke-virtual {v1, v2, v9, v10}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_1

    .line 321
    :cond_4
    invoke-virtual {v1, v2, v9, v10}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 323
    :goto_1
    invoke-interface {v0}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    .line 324
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 254
    .local v1, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 255
    .local v2, "isLimit":Z
    const v3, 0x7f0d0086

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 256
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v4, 0x7f0a00bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 257
    const v5, 0x7f0a03dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 256
    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 258
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    if-eqz v2, :cond_0

    const v4, 0x7f12048c

    goto :goto_0

    .line 260
    :cond_0
    const v4, 0x7f1204b9

    .line 259
    :goto_0
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 261
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120479

    .line 262
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 258
    return-object v3
.end method
