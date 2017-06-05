/*
#      Polygraph (release 0.1)
#      Signature generation algorithms for polymorphic worms
#
#      Copyright (c) 2004-2005, Intel Corporation
#      All Rights Reserved
#
#  This software is distributed under the terms of the Eclipse Public
#  License, Version 1.0 which can be found in the file named LICENSE.
#  ANY USE, REPRODUCTION OR DISTRIBUTION OF THIS SOFTWARE CONSTITUTES
#  RECIPIENT'S ACCEPTANCE OF THIS AGREEMENT
*/

%module pysary
%{
#include <sary/searcher.h>
#include <glib.h>
#include <sary/mmap.h>
#include <sary/text.h>
#include <sary/i.h>
#include <sary/saryconfig.h>
%}

typedef char gchar;
typedef int gboolean;
typedef int SaryInt;
extern SarySearcher*         sary_searcher_new                      (const gchar
                                                 *file_name);
extern SarySearcher*         sary_searcher_new2                     (const gchar *file_name,
                                                 const gchar *array_name);
extern void            sary_searcher_destroy                  (SarySearcher *searcher);
extern gboolean        sary_searcher_search                   (SarySearcher *searcher,
                                                 const gchar *pattern);
extern gboolean        sary_searcher_search2                  (SarySearcher *searcher,
                                                 const gchar *pattern,
                                                 SaryInt len);
extern gboolean        sary_searcher_isearch                  (SarySearcher *searcher,
                                                 const gchar *pattern,
                                                 SaryInt len);
extern void            sary_searcher_isearch_reset            (SarySearcher *searcher);
extern gboolean        sary_searcher_icase_search             (SarySearcher *searcher,
                                                 const gchar *pattern);
extern gboolean        sary_searcher_icase_search2            (SarySearcher *searcher,
                                                 const gchar *pattern,
                                                 SaryInt len);
extern SaryText*       sary_searcher_get_text                 (SarySearcher *searcher);
extern SaryMmap*       sary_searcher_get_array                (SarySearcher *searcher);
extern SaryInt         sary_searcher_get_next_offset          (SarySearcher *searcher);
extern gchar*          sary_searcher_get_next_line            (SarySearcher *searcher);
extern gchar*          sary_searcher_get_next_line2           (SarySearcher *searcher,
                                                 SaryInt *len);
extern gchar*          sary_searcher_get_next_context_lines   (SarySearcher *searcher,
                                                 SaryInt backward,
                                                 SaryInt forward);
extern gchar*          sary_searcher_get_next_context_lines2  (SarySearcher *searcher,
                                                 SaryInt backward,
                                                 SaryInt forward,
                                                 SaryInt *len);
extern gchar*          sary_searcher_get_next_tagged_region   (SarySearcher *searcher,
                                                 const gchar *start_tag,
                                                 const gchar *end_tag);
extern gchar*          sary_searcher_get_next_tagged_region2  (SarySearcher *searcher,
                                                 const gchar *start_tag,
                                                 SaryInt start_tag_len,
                                                 const gchar *end_tag,
                                                 SaryInt end_tag_len,
                                                 SaryInt *len);
extern SaryText*       sary_searcher_get_next_occurrence      (SarySearcher *searcher);
extern gchar*          sary_searcher_peek_next_position       (SarySearcher *searcher);
extern SaryInt         sary_searcher_count_occurrences        (SarySearcher *searcher);
extern void            sary_searcher_sort_occurrences         (SarySearcher *searcher);
extern void            sary_searcher_enable_cache             (SarySearcher *searcher);
