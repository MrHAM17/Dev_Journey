package com.comforthotelbookingapp.app.modules.searchpage.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowSearchpageBinding
import com.comforthotelbookingapp.app.modules.searchpage.`data`.model.SearchpageRowModel
import kotlin.Int
import kotlin.collections.List

class SearchPageAdapter(
  var list: List<SearchpageRowModel>
) : RecyclerView.Adapter<SearchPageAdapter.RowSearchpageVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchpageVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchpage,parent,false)
    return RowSearchpageVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchpageVH, position: Int) {
    val searchpageRowModel = SearchpageRowModel()
    // TODO uncomment following line after integration with data source
    // val searchpageRowModel = list[position]
    holder.binding.searchpageRowModel = searchpageRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchpageRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: SearchpageRowModel
    ) {
    }
  }

  inner class RowSearchpageVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchpageBinding = RowSearchpageBinding.bind(itemView)
  }
}
