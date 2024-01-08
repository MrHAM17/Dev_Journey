package com.tikpikshortvideosocialnetworking.app.modules.searchresultsvideos.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowSearchresultsvideosBinding
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsvideos.`data`.model.SearchresultsvideosRowModel
import kotlin.Int
import kotlin.collections.List

class SearchresultsvideosAdapter(
  var list: List<SearchresultsvideosRowModel>
) : RecyclerView.Adapter<SearchresultsvideosAdapter.RowSearchresultsvideosVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchresultsvideosVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchresultsvideos,parent,false)
    return RowSearchresultsvideosVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchresultsvideosVH, position: Int) {
    val searchresultsvideosRowModel = SearchresultsvideosRowModel()
    // TODO uncomment following line after integration with data source
    // val searchresultsvideosRowModel = list[position]
    holder.binding.searchresultsvideosRowModel = searchresultsvideosRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchresultsvideosRowModel>) {
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
      item: SearchresultsvideosRowModel
    ) {
    }
  }

  inner class RowSearchresultsvideosVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchresultsvideosBinding = RowSearchresultsvideosBinding.bind(itemView)
  }
}
