#!/bin/bash
# Downloads the images from the old Google Site into the images/ folder.
# Double-click this file in Finder (or run: bash get_images.command).
# You only need to run it once, before uploading the site to GitHub.

cd "$(dirname "$0")" || exit 1
mkdir -p images
fails=0

get() {
  if curl -fsSL --retry 2 "$2" -o "images/$1.tmp" && [ -s "images/$1.tmp" ]; then
    mv "images/$1.tmp" "images/$1"
    echo "  ok      $1"
  else
    rm -f "images/$1.tmp"
    echo "  FAILED  $1"
    fails=$((fails + 1))
  fi
}

echo "Downloading images from your Google Site..."
get logo.png                  "https://sites.google.com/sitesv-images-rt/APXyLQdc_oH3J63vgxOskaEp8Z58LqZI4K-_tSHDlaMjimufnffvI_7fSkhdOR7OVTMun_4ZPtWFS9OYLicFxlUnO_39cBvchpYwG5DIr2Z5GvRuaW1Vc2OrysaohE2jOzHiS7xkL9m5j_oiJK1NuacjZp9po71DtL-yq87-bZY=w16383"
get news-tms-open-day.png     "https://sites.google.com/sitesv-images-rt/APXyLQcDVZe-rjXsSZJBxcYapmCSQh8oNyDWQL4EYyu2WSpp7V7EaYkM3b9DdEYeVQ9OlgXQU9Y--o-jB0aAOuQnzXMCT12eoS1a3XTljUt7ZHsyWmjirmYkrv7EvB3WY0ZpYbTvsGfERnGnlkueLV7C7EoI8y6axjkvj857AyWz1TyjTVUKZZQW7Aptb53vNM2WuRdMv0bKs6-Ju3Uc2IF0NA91U6PykrLmR2mrmDEKUsI=w1280"
get news-sex-search-stimuli.png "https://sites.google.com/sitesv-images-rt/APXyLQf_T-O_leyYcXdSlPvYMi0wkL9TkXEwbVatl4ephOePEvecUGbwQVub4wWON5p2N9UxAWGF76IdXEHtpNsRtYmWf6u_Bh9kkpXAdBe4tlcjigc50V7-siaLrnrc72wsmUfpBAqjWQGncc4mDqEAc_rz-8KpRYFWFlzx5jGSq9YcdvEjZ_ZAsdGuh2nv6z6ldFvzoI3B-I-ZGv4FYbo=w1280"
get news-sex-search-slopes.png "https://sites.google.com/sitesv-images-rt/APXyLQckyFXt_NU-A8SqDdvjyAdTsekIBdyU62_nL6Pp3eg0ThS1b6Uuw0ECo4xoYScnY-E4y8zVGnSUe4zPCZM0KkiZwaVNC_SSAJSQYkLaA888AL5GyLFAQQjsidvTXSOr-mAja4U_UfkUOnl5sDRoTrZL29SiDjIZmmfmoxxKvu8mdIseIb-veNfHe2hiqaqQrt_qEv3gKjstHF3X4fc=w1280"
get news-phd-viva.jpg         "https://sites.google.com/sitesv-images-rt/APXyLQfjy_tRNgOyW_73n5TC2wK7VZRdVkXtQvhHmJhRxVrOSzLtS5Jq_G3yyLntrVabBFLuvR6IBjFNvVAJCxBCztmfRuwIVjTPTtTwFMvZLxediV-vyk58jpuuwWt55iSlAmJ6ilCAuoEEzrvMHzx13xoVPoqZmmtD3so1bpAtl7IJn-o7wpGxXTtl5knSUsEJ7meWPer5WW4fNgsX=w1280"
get improc-shift-object.png   "https://sites.google.com/sitesv-images-rt/APXyLQcaay5_qfIS4tQXfjdgeJQHXFPEIoukFGU8c3m6VeG9DuNmbT62QQsflEdalGqeujgx53SqcPLtUlrtakuQk9GZA0pyNlWY_SWMza_HS85Y3pC6OXpqZuBHTvOtrZ2lWLlDgwVZFSPr4B-TuZL8UVurymijHTixFsNmsZKfeTfIRvLTLnFbg_g_3XpI6oK5wWtKE3Q8Z5VmjJy56mVVHNTu9N3W8d2rs6mtbbbD=w1280"
get improc-grid-scramble.png  "https://sites.google.com/sitesv-images-rt/APXyLQfIPkKPMkGdhkrhpj_733dsmYCJr-DX9riVCYXEDtOSeClaTWTj2Qu30bW8lx90LiYSl2if0H00BHj0V3p7Dx8D_o8CrLL6qgqGOQpj37HJDr4lyO-gZVKb9TFrPEHM0Fvr3ioJnnlx_CSyFZmsNZ_6HJ8lhRMxZIfQnmQeLXaDcMAFCob2zIrBKM3Ea7TRUSiYiRbOiiWvPaQBsBoPhvF0eOfuw0WAdjap-IIJVHs=w1280"
get improc-canvas.png         "https://sites.google.com/sitesv-images-rt/APXyLQdTP-80jT9xT33QePe1KDW-8CBHpeJZERA6c2BwygSrjh4u99KlQC0UPXwREQJZntltKUsCbd_ofwlg3-l3KytrL6-jCNmyRAsoCqNVU-2u8tZziw11-dvKf4jEMkm2hGlwVXbt2gWwm3lGOn-P9Dv7snJnQBKSoPt4Jgfa1hUTD_bUji0Ut5vA8N97ood50qdDAU1Z1iXXLNtbI-7miqLzeRhLBn5jmJRWQbwn=w1280"
get stimuli-body-shape.jpg    "https://sites.google.com/sitesv-images-rt/APXyLQcq9Qnxw1S9E4pdd1s_gmYtgeRrgnuly5y_SopDdSx6S1ws4ppfVTnoGIZdATl8esQMadtzy1cnYCV-OW0EY1SVC6-TCYOkw2kbfZgm9De03i0Ofb_6T5UBlZEM74JdnR6WiEBCXbxmQQEF_NwXkJB70T1zwiQMmy8Bc4IlGmSVJl2APs7rB07WO23SdZeAT-UGNnjdm38wNaXO4tY=w1280"
get stimuli-depth-of-field.jpg "https://sites.google.com/sitesv-images-rt/APXyLQdUmFkc-fsIWlfqfqS6tFd57fDO_uWWEciuTejBZ4w2jXFu-tpuruKbuEXFdR-n1N2lBbTguEZ20cLnwhSWmcUallGKv8q56rbTkDmAbjE_rNHgyesO3xqBKJKFqLAEHfdyKLOpeno3UD9Dls5n_CRonhWqGXBv2cd5DsNzaoz7YxrD-O9M8HElS1agEMxpebeBXQGOdEczVIoo1agGVuVRmpZYUdEi9HAbU8BgyZ4=w1280"
get stimuli-emotional-bodies.png "https://sites.google.com/sitesv-images-rt/APXyLQcf97x1Jn4yEMPlNFsggJOEXsUQi2FnUphMyv57rsEJpVCPKrTmu8PoJ8x2qHwxR6GdhHJRflqDWwyRntnaZlzdeNZ04HwoK2EGHXhdqIx84ZC4X5b81R_fTbAPzxUd2E3c_CVQpkktqImVBQn8uXrsUubA35t6mZtbTALkU4VrE_A7-iF8M7JWJccK8VJ9FE7kjrrlx0a0MP5eYJrwc5y4CfD8zVp-JqQsAa0MgR8=w1280"
get tms-slides-thumbnail.jpg  "https://lh3.googleusercontent.com/docsubipk/AP9E6xXisJOCpgRsO9IN2pGqek9owELBtq1hGE3DUS8yQ1CPRyZeUZN956DUZTsCe_YN2lqNoll4W0WVkbpRztKGQehr8KELfNmDb2X0C8PgPK-ULQcIPRbXaXYAGi3NkfHdslN1eg1Ui4HB7Qgu24j9Ac_O4vObiHURttIkJGBtbE37HLYsvhwPCHAiIw"

echo
if [ "$fails" -eq 0 ]; then
  echo "All 12 images downloaded into the images folder. You can close this window."
else
  echo "$fails image(s) failed. Tell Claude, or save them by hand from your Google Site into the images folder."
fi
