.class Lcom/android/settings/localepicker/LocaleListEditor$6;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/localepicker/LocaleListEditor;

    .line 267
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    .line 271
    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    .line 270
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    .line 272
    .local v0, "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleListEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 274
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    .line 275
    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleListEditor;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "localeListEditor"

    .line 276
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 278
    return-void
.end method
