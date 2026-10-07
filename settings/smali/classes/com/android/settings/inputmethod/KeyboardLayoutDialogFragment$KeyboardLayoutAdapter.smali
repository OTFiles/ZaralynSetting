.class final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 228
    const v0, 0x10900fa

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    .line 229
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 230
    return-void
.end method

.method private inflateOneLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "checked"    # Z

    .line 258
    move-object v0, p1

    .line 259
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 263
    invoke-static {v0, v3}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    .line 265
    :cond_1
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 266
    .local v1, "headline":Landroid/widget/CheckedTextView;
    invoke-virtual {v1, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v1, p4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 268
    return-object v0
.end method

.method private inflateTwoLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "collection"    # Ljava/lang/String;
    .param p5, "checked"    # Z

    .line 273
    move-object v0, p1

    .line 274
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900fa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 278
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    .line 280
    :cond_1
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 281
    .local v1, "headline":Landroid/widget/TextView;
    const v2, 0x1020015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 282
    .local v2, "subText":Landroid/widget/TextView;
    const v3, 0x10203a1

    .line 283
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 284
    .local v3, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {v3, p5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 287
    return-object v0
.end method

.method private static isTwoLine(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setTwoLine(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "twoLine"    # Z

    .line 295
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    .line 240
    .local v0, "item":Landroid/hardware/input/KeyboardLayout;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v2

    .local v2, "collection":Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v1
    .end local v2
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120738

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .restart local v1
    const-string v2, ""

    .line 248
    .restart local v2
    :goto_0
    iget v3, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    if-ne p1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v9, v3

    .line 249
    .local v9, "checked":Z
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    invoke-direct {p0, p2, p3, v1, v9}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->inflateOneLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 252
    :cond_2
    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    move-object v7, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->inflateTwoLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public setCheckedItem(I)V
    .locals 0
    .param p1, "position"    # I

    .line 233
    iput p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    .line 234
    return-void
.end method
