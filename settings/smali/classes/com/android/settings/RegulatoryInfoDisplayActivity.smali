.class public Lcom/android/settings/RegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "RegulatoryInfoDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final REGULATORY_INFO_RESOURCE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, "regulatory_info"

    iput-object v0, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->REGULATORY_INFO_RESOURCE:Ljava/lang/String;

    return-void
.end method

.method public static getRegulatoryInfoImageFileName()Ljava/lang/String;
    .locals 6

    .line 151
    invoke-static {}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "sku":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "/data/misc/elabel/regulatory_info.png"

    return-object v1

    .line 155
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "/data/misc/elabel/regulatory_info_%s.png"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 155
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourceId()I
    .locals 6

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "regulatory_info"

    const-string v2, "drawable"

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "resId":I
    invoke-static {}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "sku":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regulatory_info_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "regulatory_info_res":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 132
    .local v3, "id":I
    if-eqz v3, :cond_0

    .line 133
    move v0, v3

    .line 136
    .end local v2
    .end local v3
    :cond_0
    return v0
.end method

.method public static getSku()Ljava/lang/String;
    .locals 2

    .line 146
    const-string v0, "ro.boot.hardware.sku"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f050032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    .line 68
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120bbb

    .line 69
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 72
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    .line 74
    .local v2, "regulatoryInfoDrawableExists":Z
    invoke-static {}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getRegulatoryInfoImageFileName()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "regulatoryInfoFile":Ljava/lang/String;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 77
    .local v4, "regulatoryInfoBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 78
    const/4 v2, 0x1

    .line 81
    :cond_1
    const/4 v5, 0x0

    .line 82
    .local v5, "resId":I
    if-nez v2, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResourceId()I

    move-result v5

    .line 85
    :cond_2
    if-eqz v5, :cond_4

    .line 87
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 90
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_3

    .line 91
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    move v2, v7

    .line 94
    .end local v6
    goto :goto_1

    .line 92
    :catch_0
    move-exception v6

    .line 93
    .local v6, "ignored":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    .line 97
    .end local v6
    :cond_4
    :goto_1
    const v6, 0x7f120bba

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 99
    .local v6, "regulatoryText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_6

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d017b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 101
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0a034f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 102
    .local v8, "image":Landroid/widget/ImageView;
    if-eqz v4, :cond_5

    .line 103
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :goto_2
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    .end local v7
    .end local v8
    goto :goto_3

    :cond_6
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 110
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    .line 113
    .local v7, "dialog":Landroid/app/AlertDialog;
    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 114
    .local v8, "messageText":Landroid/widget/TextView;
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    .end local v7
    .end local v8
    goto :goto_3

    .line 117
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    .line 119
    :goto_3
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    .line 142
    return-void
.end method
