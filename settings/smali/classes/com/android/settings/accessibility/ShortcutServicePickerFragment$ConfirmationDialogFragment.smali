.class public Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ShortcutServicePickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmationDialogFragment"
.end annotation


# instance fields
.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
    .param p1, "key"    # Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;-><init>()V

    .line 157
    .local v0, "fragment":Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v1, "argument":Landroid/os/Bundle;
    const-string v2, "extra_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 161
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->mToken:Landroid/os/IBinder;

    .line 162
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 167
    const/4 v0, 0x6

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 185
    .local v0, "fragment":Landroid/app/Fragment;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    instance-of v1, v0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 187
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    check-cast v2, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    const-string v3, "extra_key"

    .line 188
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->access$000(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V

    .line 190
    .end local v1
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 175
    .local v2, "serviceComponentName":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    .line 176
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 177
    .local v3, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 178
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    .line 179
    .local v4, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, p0}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->createCapabilitiesDialog(Landroid/app/Activity;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v5

    return-object v5
.end method
