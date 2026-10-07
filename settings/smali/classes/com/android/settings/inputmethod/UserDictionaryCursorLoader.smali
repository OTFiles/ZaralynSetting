.class public Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;
.super Landroid/content/CursorLoader;
.source "UserDictionaryCursorLoader.java"


# static fields
.field static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const-string v0, "_id"

    const-string v1, "word"

    const-string v2, "shortcut"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->mLocale:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 12

    .line 70
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->QUERY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 72
    .local v0, "result":Landroid/database/MatrixCursor;
    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v7, "locale is null"

    const/4 v8, 0x0

    const-string v9, "UPPER(word)"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "candidate":Landroid/database/Cursor;
    goto :goto_1

    .line 79
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->mLocale:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->mLocale:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "queryLocale":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v8, "locale=?"

    new-array v9, v3, [Ljava/lang/String;

    aput-object v1, v9, v2

    const-string v10, "UPPER(word)"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 84
    .local v1, "candidate":Landroid/database/Cursor;
    :goto_1
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 85
    .local v4, "hashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 86
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 87
    .local v5, "id":I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "word":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "shortcut":Ljava/lang/String;
    new-array v9, v7, [Ljava/lang/Object;

    aput-object v6, v9, v2

    aput-object v8, v9, v3

    invoke-static {v9}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v9

    .line 90
    .local v9, "hash":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 91
    goto :goto_3

    .line 93
    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    aput-object v6, v10, v3

    aput-object v8, v10, v7

    invoke-virtual {v0, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 85
    .end local v5
    .end local v6
    .end local v8
    .end local v9
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 96
    :cond_3
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
