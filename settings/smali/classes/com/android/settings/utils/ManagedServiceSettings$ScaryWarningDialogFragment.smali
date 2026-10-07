.class public Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaryWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "parent"    # Lcom/android/settings/utils/ManagedServiceSettings;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "id"    # I

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->enable(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "id"    # I

    .line 223
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 190
    const/16 v0, 0x22d

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 206
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "l"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "label":Ljava/lang/String;
    const-string v2, "c"

    .line 208
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 209
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/utils/ManagedServiceSettings;

    .line 211
    .local v3, "parent":Lcom/android/settings/utils/ManagedServiceSettings;
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3}, Lcom/android/settings/utils/ManagedServiceSettings;->access$000(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v5

    iget v5, v5, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3}, Lcom/android/settings/utils/ManagedServiceSettings;->access$000(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v7

    iget v7, v7, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v1, v9, v8

    invoke-virtual {v5, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "summary":Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 216
    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 217
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$GfuRaJIB12V_MS8RLGOsdgpO8G0;

    invoke-direct {v7, v3, v2}, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$GfuRaJIB12V_MS8RLGOsdgpO8G0;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;)V

    .line 218
    const v8, 0x7f1200da

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget-object v7, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$zGrX-jMl8gPwJu7rfyhg512VL6Y;->INSTANCE:Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$zGrX-jMl8gPwJu7rfyhg512VL6Y;

    .line 220
    const v8, 0x7f120503

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 224
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 214
    return-object v6
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "target"    # Landroid/app/Fragment;

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "l"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 200
    return-object p0
.end method
